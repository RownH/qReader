#ifndef CURPAGE_SETTING_H
#define CURPAGE_SETTING_H


#define SIMULATION 0//仿真
#define COVERW 1//覆盖
#define SLIDE 2//滑动
#define AUTO 3//自动翻页
#define FULLSCREEN 4//全屏屏
#define NONE 5//无


class curPage_setting
  {
public:
    explicit curPage_setting();
public :
    int Current_Page_Method()const;
    void setCurrent_Page_Method(int method);
    bool isFull_ScreenCur()const;
    void setFull_ScreenCur(bool yesOrNo);
    void setAuto_Cur_Page(bool yesOrNo);
    bool isAuto_Cur_Page()const;
    bool isHrizen()const;
    void setHrizen(bool yesOrNo);
private:
   int current_cur_page_method;//当前翻页方式
   bool is_Full_Scrren_Cur_Page;//是否全屏翻页
   bool is_Auto_Cur_Page;//是否自动翻页
   bool is_horizen;//是否横屏显示

};

#endif // CURPAGE_SETTING_H
