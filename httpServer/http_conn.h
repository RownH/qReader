#ifndef HTTP_CONN_H
#define HTTP_CONN_H
#include<unistd.h>
#include<signal.h>
#include<sys/types.h>
#include<fcntl.h>
#include<sys/socket.h>
#include<sys/epoll.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<assert.h>
#include<sys/stat.h>
#include<string.h>
#include<pthread.h>
#include<stdio.h>
#include<stdlib.h>
#include<sys/mman.h>
#include<sys/uio.h>
#include<stdarg.h>
#include<errno.h>
#include"locker.h"
class http_conn
{
public:
    static const int FILENAME_LEN=200;
    //文件最大长度
    static const int READ_BUFFER_SIZE=2048;
    //读缓冲区大小
    static const int WRITE_BUFFER_SIZE=1024;
    //写缓冲区大小

    //请求方法
    enum REQUEST_METHOD{
        GET=0,//获得特定资源
        POST,//向特定资源提交数据进行处理请求 数据包含在请求体中.POST请求可能导致新的资源创建
        HEAD,//与GET一样,响应题不返回,获得消息头的元信息
        PUT,//向指定资源上传最新内容
        DELETE,// 请求服务器删除Request_URL所标识的资源
        TRACE,//回显服务器收到的请求
        OPTIONS,    //返回服务器针对特定资源所支持的请求方法
        CONNECT,//连接改为管道的代理服务器
        PATCH //补丁
    };

    //主机状态
    enum CHEACK_STATE{
        CHEACK_STATE_REQUESTLINE=0,//请求行
        CHEACK_STATE_HEADER, //请求头
        CHEACK_STATE_CONTENT  //请 content
    };

    //处理结果
    enum RESULT_CODE{
        NO_REQUEST,
        GET_REQUEST,
        BAD_REQUEST,
        NO_RESOURCE,
        FORBIDDEN_REQUEST,
        EN_REQUEST,
        FILE_REQUEST,
        INTERNAL_ERROR,
        CLOSED_CONNECTION
    };
    enum LINE_STATUS{
        LINE_OK=0,  //一行读取成功
        LINE_BAD,   //错误格式
        LINE_OPEN   //数据未读完
    };

public:

    http_conn();
    ~http_conn();

    void init(int sockfd,const sockaddr_in &addr);//初始化连接 指定某个连接
    void close_conn(bool real_close=true);
    void process();
    bool read();
    bool write();
private:
    void init_state(); //初始化成员状态变量

    //分析阶段
    RESULT_CODE process_read();//解析请求
    bool process_write(RESULT_CODE);//填写应答
public:
    RESULT_CODE parse_request_line(char *text);//解析请求行
    RESULT_CODE parse_headers(char *text);//解析请求头
    RESULT_CODE parse_content(char *text);//解析请求内容
    RESULT_CODE do_request();//做出应答
    char *get_line(){
        return m_read_buf+m_start_line;
    }
    LINE_STATUS parse_line(); //分析读取每一行
    //填充阶段
    void unmap();
    bool add_response(const char *format,...); //返回
    bool add_content(const char *content); //返回内容
    bool add_status_line(int status,const char *title);//增加状态码和状态类型
    bool add_content_length(int content_length);//内容长度
    bool add_linger();//连接类型
    bool add_blank_line();
    bool add_headers(int content_len);
public:
    static int m_epolled;//epoll描述符
    static int m_user_count;//用户总量

private:
    int m_socked;//对方的套接字
    sockaddr_in m_address;//对方地址
    char m_read_buf[READ_BUFFER_SIZE];
    int m_read_idx;//当前已经读书数据位置
    int m_checked_idx;//当前解析到那一个位置
    int m_start_line;//当前解析行的起始位置
    char m_write_buf[WRITE_BUFFER_SIZE];//写缓冲区
    int m_write_idx;//写缓冲区中待发送的字节数
    CHEACK_STATE m_check_state;//当前检查状态
    REQUEST_METHOD m_quest_method;//请求类型
    char m_real_file[FILENAME_LEN];//所需文件
    char *m_url;//文件名+路径
    char *m_version;//当前http 版本号
    char *m_host;//主机名
    int m_content_length;//请求消息长度
    bool m_link;//保持连接
    char *m_file_address;//客户请求文件 被mmap到内存中的地址
    struct stat m_file_stat;//目标文件状态

    struct iovec m_lv[2];
    int m_iv_count;
};

#endif // HTTP_CONN_H
