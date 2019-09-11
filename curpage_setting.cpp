#include "curpage_setting.h"

curPage_setting::curPage_setting(QObject *parent) : QObject(parent)
{

}

curPage_setting::CUR_PAGES curPage_setting::Current_Page_Method() const
{
    return current_cur_page_method;

}

void curPage_setting::setCurrent_Page_Method(curPage_setting::CUR_PAGES method)
{
    if(method==current_cur_page_method)return;
    current_cur_page_method=method;
    Current_Page_MethodChanged(method);
}
