#include "book_settings.h"

Book_settings::Book_settings(QObject *parent) : QObject(parent)
{

}
QString Book_settings::back_Muic()const
{
    return Back_Setting.getCurrentMusic();
}

void Book_settings::setback_Muic(QString path)
{
    return ;//暂不做任何操作
    back_MuicChanged(path);
}

QString Book_settings::back_Image() const
{
    return Back_Setting.getCurrentImg();

}

void Book_settings::setback_Image(QString path)
{
    return ;//暂不做任何操作
    back_ImageChanged(path);
}

QColor Book_settings::back_Color() const
{
    return  Back_Setting.getBackColor();
}

void Book_settings::setback_Color(QColor color)
{
    Back_Setting.setBackColor(color);
    back_ColorChanged(color);
}

int Book_settings::font_Size() const
{
    return Theme_Setting.m_fontSet.getFontSize();
}

void Book_settings::setfont_Size(int size)
{
    Theme_Setting.m_fontSet.setFontSize(size);
    font_SizeChanged(size);
}
QColor Book_settings::font_Color() const
{
    return Theme_Setting.m_fontSet.getFontColor();
}

void Book_settings::setfont_Color(QColor color)
{
    Theme_Setting.m_fontSet.setFontColor(color);
    font_ColorChanged(color);
}

int Book_settings::theme() const
{
    return Theme_Setting.Theme();
}

void Book_settings::settheme(int theme)
{
    Theme_Setting.setTheme(theme);
     themeChanged(theme);
}

int Book_settings::cur_PageMethod() const
{
    return Cur_Page_Setting.Current_Page_Method();
}
void Book_settings::setcur_PageMethod(int index)
{
    Cur_Page_Setting.setCurrent_Page_Method(index);
    cur_PageMethodChanged(index);
}
bool Book_settings::full_ScreenCur()
{
    return Cur_Page_Setting.isFull_ScreenCur();
}
void Book_settings::setfull_ScreenCur(bool yesOrNo)
{
    Cur_Page_Setting.setFull_ScreenCur(yesOrNo);
    full_ScreenCurChanged(yesOrNo);
}
bool Book_settings::auto_CurPage()
{
    return Cur_Page_Setting.isAuto_Cur_Page();
}

void Book_settings::setauto_CurPage(bool yesOrNo)
{
    Cur_Page_Setting.setAuto_Cur_Page(yesOrNo);
    auto_CurPageChanged(yesOrNo);
}

bool Book_settings::horizen_Scrren()
{
    return Cur_Page_Setting.isHrizen();
}

void Book_settings::sethorizen_Scrren(bool yesOrNo)
{
    Cur_Page_Setting.setHrizen(yesOrNo);
    horizen_ScrrenChanged(yesOrNo);
}











