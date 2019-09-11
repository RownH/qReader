#include "curpage_setting.h"

curPage_setting::curPage_setting()
{

}

int curPage_setting::Current_Page_Method() const
{
    return current_cur_page_method;

}

void curPage_setting::setCurrent_Page_Method(int method)
{
    if(method==current_cur_page_method)return;
    current_cur_page_method=method;
}

bool curPage_setting::isFull_ScreenCur() const
{
    return this->is_Full_Scrren_Cur_Page;
}

void curPage_setting::setFull_ScreenCur(bool yesOrNo)
{
    is_Full_Scrren_Cur_Page=yesOrNo;
}

void curPage_setting::setAuto_Cur_Page(bool yesOrNo)
{
    is_Auto_Cur_Page=yesOrNo;
}

bool curPage_setting::isAuto_Cur_Page() const
{
    return this->is_Auto_Cur_Page;
}

bool curPage_setting::isHrizen() const
{
    return this->is_horizen;
}

void curPage_setting::setHrizen(bool yesOrNo)
{
    is_horizen=yesOrNo;
}
