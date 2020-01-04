#ifndef TEST_H
#define TEST_H

#include<iostream>
#include<stdio.h>
#include<unistd.h>
using namespace  std;
class test
{
public:
    test(int i){
        m_nums=i;
    };
    void process(){
        for (int i=0;i<5;i++) {
            sleep(1);
            cout<<m_nums<<":"<<i<<endl;
        }
    }
private:
    int m_nums;
};

#endif // TEST_H
