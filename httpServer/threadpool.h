#ifndef THREADPOOL_H
#define THREADPOOL_H
#include<list>
#include<cstdio>
#include<pthread.h>
#include"locker.h"
template <typename T>
class threadpool{
public:
    threadpool(int thread_number=8,int max_requests=10000);//线程数  最大请求数
    ~threadpool();
    bool append(T *request);
private:
    static void *worker(void *arg);
    void run();
private:
    int m_thread_number;    //线程池中的线程数
    int m_max_requests; // 最大请求队列
    pthread_t *m_threads;   // 描述线程池的数组
    std::list<T*> m_workqueue;  //请求队列
    locker m_queuelocker;   //保护请求队列的互斥锁
    sem m_queuestat;    //是否有重要任务需要处理
    bool m_stop;    //是否结束线程
};

template<typename T>
threadpool<T>::threadpool(int thread_number, int max_requests):m_thread_number(thread_number),m_max_requests(max_requests),m_stop(false),m_threads(NULL)
{
    if(thread_number<=0|| max_requests<=0){
        throw std::exception();
    }
    m_threads=new pthread_t[m_thread_number];
    if(!m_threads){
        throw std::exception();
    }
    for(int i=0;i<thread_number;++i){
        printf("create thr %dth thread\n",i);
        if(pthread_create(m_threads+i,NULL,worker,this)!=0){
            delete []m_threads;
            throw std::exception();
        }
        if(pthread_detach(m_threads[i])){
            delete []m_threads;
            throw std::exception();
        }
    }
}
template<typename T> threadpool<T>::~threadpool()
{
    delete [] m_threads;
    m_stop=true;
}
template<typename T>
bool threadpool<T>::append(T *request)
{

    m_queuelocker.lock();
    if(m_workqueue.size()>m_max_requests){
        m_queuelocker.unlock();
        return false;
    }
    m_workqueue.push_back(request);
    m_queuelocker.unlock();
    m_queuestat.post();
    return  true;
}
template<typename T>
void *threadpool<T>::worker(void *arg)
{
       threadpool *pool=(threadpool*)arg;
       pool->run();
       return pool;
}
template<typename T>
void threadpool<T>::run()
{

    while (!m_stop) {
        m_queuestat.wait();
        m_queuelocker.lock();
        if(m_workqueue.empty()){
            m_queuelocker.unlock();
            continue;
        }
        T *request=m_workqueue.front();
        m_workqueue.pop_front();
        m_queuelocker.unlock();
        if(!request){
            continue;
        }
        request->process();
    }
}
#endif // THREADPOOL_H
