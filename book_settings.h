#ifndef BOOK_SETTINGS_H
#define BOOK_SETTINGS_H
/*
    设置类
    控制界面的view显示


*/
#include <QObject>
#include<background_setting.h>
#include<curpage_setting.h>
#include<theme_setting.h>
#define WHITE 1
#define YELLOW 2
#define BISQUE 3//暗黄色
#define BLACK 4
#define GREEN 5
#define BLACKISH_GREEN 6
class Book_settings : public QObject
{
    Q_OBJECT

public:
    explicit Book_settings(QObject *parent = nullptr);
    //背景设置
    Q_PROPERTY(QString back_Muic READ back_Muic WRITE setback_Muic NOTIFY back_MuicChanged)
    Q_PROPERTY(QString back_Image READ back_Image WRITE setback_Image NOTIFY back_ImageChanged)
    Q_PROPERTY(QString back_Color READ back_Color WRITE setback_Color NOTIFY back_ColorChanged)


    //字体设置
    Q_PROPERTY(int font_Size READ font_Size WRITE setfont_Size NOTIFY font_SizeChanged)
    Q_PROPERTY(QString font_Color READ font_Color WRITE setfont_Color NOTIFY font_ColorChanged)


    //主题设置
    Q_PROPERTY(int theme READ theme WRITE settheme NOTIFY themeChanged)

    //翻页方式
    Q_PROPERTY(int cur_PageMethod READ cur_PageMethod WRITE setcur_PageMethod NOTIFY cur_PageMethodChanged)
    Q_PROPERTY(bool full_ScreenCur READ full_ScreenCur WRITE setfull_ScreenCur NOTIFY full_ScreenCurChanged)
    Q_PROPERTY(bool auto_CurPage READ auto_CurPage WRITE setauto_CurPage NOTIFY auto_CurPageChanged)
    Q_PROPERTY(bool horizen_Scrren READ horizen_Scrren WRITE sethorizen_Scrren NOTIFY horizen_ScrrenChanged)
signals:
    void back_MuicChanged(QString );
    void back_ImageChanged(QString );
    void back_ColorChanged(QString index);
    void font_SizeChanged(int index);

    void font_ColorChanged(QString index);
    void cur_PageMethodChanged(int index);
    void themeChanged(int index);

    void full_ScreenCurChanged(bool yesOrNo);
    void auto_CurPageChanged(bool yesOrNo);
    void horizen_ScrrenChanged(bool yesOrNo);
public:
    //背景音乐
    QString back_Muic()const;
    void setback_Muic(QString path);

    //背景图片
    QString back_Image()const;
    void setback_Image(QString);

    //背景颜色
    QString back_Color()const;
    void setback_Color(QString color);

    //字体大小
    int font_Size()const;
    void setfont_Size(int size);

    //字体颜色
    QString font_Color()const;
    void setfont_Color(QString color);

    //设置主题
    int theme()const;
    void settheme(int theme);

    //设置翻页
    int cur_PageMethod()const;
    void setcur_PageMethod(int index);

    //设置全屏翻页
    bool full_ScreenCur();
    void setfull_ScreenCur(bool yesOrNo);

    //自动翻页
    bool auto_CurPage();
    void setauto_CurPage(bool yesOrNo);

    //设置竖屏显示
    bool horizen_Scrren();
    void sethorizen_Scrren(bool yesOrNo);

public slots:
    QString printF(){ return "hello";}
private:
    background_setting Back_Setting;
    curPage_setting Cur_Page_Setting;
    Theme_setting Theme_Setting;
};

#endif // BOOK_SETTINGS_H
