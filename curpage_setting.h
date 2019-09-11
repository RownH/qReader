#ifndef CURPAGE_SETTING_H
#define CURPAGE_SETTING_H

#include <QObject>

class curPage_setting : public QObject
{
    Q_OBJECT
public:
    explicit curPage_setting(QObject *parent = nullptr);
    Q_PROPERTY(CUR_PAGES Current_Page_Method READ Current_Page_Method WRITE setCurrent_Page_Method NOTIFY Current_Page_MethodChanged)
    enum CUR_PAGES{
        SIMULATION,//仿真
        COVERW,//覆盖
        SLIDE,//滑动
        AUTO,//自动翻页
        FULLSCREEN,//全屏屏
        NONE//无
    };
signals:
    void Current_Page_MethodChanged(CUR_PAGES method);
public slots:
    CUR_PAGES Current_Page_Method()const;
    void setCurrent_Page_Method(CUR_PAGES method);


private:
   CUR_PAGES current_cur_page_method;//当前翻页方式
   bool is_Full_Scrren_Cur_Page;//是否全屏翻页
   bool is_Auto_Cur_Page;//是否自动翻页
   bool is_horizen;//是否横屏显示

};

#endif // CURPAGE_SETTING_H
