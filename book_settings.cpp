#include "book_settings.h"
#include<QDebug>

Book_settings::Book_settings(QObject *parent) : QObject(parent)
{
    settheme(1);
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

int Book_settings::alignment_method() const
{
    return Theme_Setting.m_fontSet.getAlignment();
}

void Book_settings::setAlignment_method(int index)
{
    Theme_Setting.m_fontSet.setAlignment(index);
    alignment_methodChanged(index);
}

double Book_settings::word_spcing() const
{
    return Theme_Setting.m_fontSet.getWordSpcing();
}

void Book_settings::setWord_spcing(double spacing)
{
    Theme_Setting.m_fontSet.setWordSpcing(spacing);
    word_spcingChanged(spacing);

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

QString Book_settings::back_Color() const
{
    return  Back_Setting.getBackColor();
}

void Book_settings::setback_Color(QString color)
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
QString Book_settings::font_Color() const
{
    return Theme_Setting.m_fontSet.getFontColor();
}

void Book_settings::setfont_Color(QString color)
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
    if(Theme_Setting.Theme()==theme)return;
    Theme_Setting.setTheme(theme);
    switch (theme) {
        case WHITE:{
              setback_Color("#F0F0F0");
              setfont_Color("BLACK");
              break;
        }
        case YELLOW:{
                setback_Color("#D8C0A8");
                setfont_Color("BLACK");
                break;
            }
        case BISQUE:{
                setback_Color("#484848");
                setfont_Color("WHITE");
                break;
        }
        case BLACK:{
                setback_Color("#C0F0D8");
                setfont_Color("BLACK");
                break;
        }
        case GREEN:{
                setback_Color("#001830");
                setfont_Color("WHITE");
                break;
        }
        case BLACKISH_GREEN:{
            setback_Color("#336666");
            setfont_Color("WHITE");
            break;
        }
        default:{
            setback_Color("black");
            setfont_Color("white");
            break;
        }
    }
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











