#include <iostream>
#include<sys/socket.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<stdio.h>
#include<unistd.h>
#include<error.h>
#include<string.h>
#include<fcntl.h>
#include<stdlib.h>
#include<cassert>
#include<sys/epoll.h>
#include"locker.h"
#include"threadpool.h"
#include"http_conn.h"
using namespace std;
#define MAX_FD  65536
#define MAX_EVENT_NUMBER 10000
extern int addfd(int epollfd,int fd,bool one_shot);
extern int removefd(int epolled,int fd);
void addsig(int sig,void (handler)(int),bool restart=true){
    struct sigaction sa;
    memset(&sa,'\0',sizeof (sa));
    sa.sa_handler=handler;
    if(restart){
        sa.sa_flags|=SA_RESTART;
    }
    sigfillset(&sa.sa_mask);
    assert(sigaction(sig,&sa,NULL)!=-1);
}
void show_error(int connfd,const char *info){
    printf("%s",info);
    send(connfd,info,strlen(info),0);
    close(connfd);
}
int main(int argc,char *argv[])
{
    /*
    if(argc<2){
        printf("usage:%s ip_address port_number \n",basename(argv[0]));
        return 1;
    }

    const char *ip=argv[1];
    int port=atoi(argv[2]);
    */
    const char *ip="127.0.0.2";
    int port=8000;

    addsig(SIGPIPE,SIG_IGN);//ignore SIGPIPE signal
    threadpool<http_conn>*pool=NULL;
    try {
        pool=new threadpool<http_conn>(1); //defalut 8 threads and 10000 request
    } catch (...) {
        return -1;
    }
    http_conn *users=new http_conn[MAX_FD];
    assert(users);
    int user_count=0;
    int lisenfd=socket(PF_INET,SOCK_STREAM,0);
    assert(lisenfd>0);

    struct linger tmp={1,0};
    setsockopt(lisenfd,SOL_SOCKET,SO_LINGER,&tmp,sizeof (tmp));
    int ret=0;
    struct sockaddr_in address;
    bzero(&address,sizeof (address));
    address.sin_family=AF_INET;
    inet_pton(AF_INET,ip,&address.sin_addr);
    address.sin_port=htons(port);
    ret=bind(lisenfd,(struct sockaddr*)&address,sizeof (address));
    assert(ret>=0);
    ret=listen(lisenfd,50);
    assert(ret>=0);

    epoll_event events[MAX_EVENT_NUMBER];
    int epollfd=epoll_create(50);
 //   assert(epollfd==-1);
    addfd(epollfd,lisenfd,false);
    http_conn::m_epolled=epollfd;
    while (true) {
            int number=epoll_wait(epollfd,events,MAX_EVENT_NUMBER,-1);

            if((number<0)&&(errno!=EINTR)){
            printf("epoll failutr");
            break;
        }
        for (int i=0;i<number;++i) {

            int sockfd=events[i].data.fd;
            if(sockfd==lisenfd){
                struct sockaddr_in client_address;
                socklen_t client_addrlenth=sizeof(client_address);
                int connfd=accept(lisenfd,(sockaddr *) &client_address,&client_addrlenth);
                if(connfd<0){
                    printf("error is:%d\n",errno);
                    continue;
                }
                if(http_conn::m_user_count>MAX_FD){
                    show_error(connfd,"internal serverbusy");
                    continue;
                }
                users[connfd].init(connfd,client_address);
            }
            else if(events[i].events &(EPOLLRDHUP |EPOLLHUP |EPOLLERR)){
                users[sockfd].close_conn();
            }
            else if(events[i].events &(EPOLLIN)){
                if(users[sockfd].read()){
                    pool->append(&users[sockfd]);
                }
                else{
                    users[sockfd].close_conn();
                }
            }
                else if(events[i].events&EPOLLOUT){
                    if(!users[sockfd].write())
                    {
                        users[sockfd].close_conn();
                    }
            }
            else{
            }
            }
        }
    close(epollfd);
    close(lisenfd);

    delete  []users;
    delete pool;
    return 0;
}
