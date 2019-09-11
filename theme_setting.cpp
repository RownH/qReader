#include "theme_setting.h"

Theme_setting::Theme_setting(QObject *parent) : QObject(parent)
{
    currentThemes=Themes::BLACK;
    m_backSetting.setBackColor("black");
    m_fontSet.setFontColor("white");

}

Theme_setting::Themes Theme_setting::Theme() const
{
    return  currentThemes;
}

void Theme_setting::setTheme(Themes theme)
{
    if(currentThemes==theme)return;
    currentThemes=theme;
    switch (currentThemes) {
        case WHITE:{
              m_backSetting.setBackColor("black");
              m_fontSet.setFontColor("white");
              break;
        }
        case YELLOW:{
                m_backSetting.setBackColor("#FFFACD");
                m_fontSet.setFontColor("BLACK");
                break;
            }
        case BISQUE:{
                m_backSetting.setBackColor("#FFE4C4");
                m_fontSet.setFontColor("BLACK");
        }
        case BLACK:{
                m_backSetting.setBackColor("#808080");
                m_fontSet.setFontColor("WHITE");
                break;
        }
        case GREEN:{
                m_backSetting.setBackColor("#CCFF99");
                m_fontSet.setFontColor("WHITE");
                break;
        }
        case BLACKISH_GREEN:{
            m_backSetting.setBackColor("#336666");
            m_fontSet.setFontColor("WHITE");
            break;
        }
        default:{
            m_backSetting.setBackColor("black");
            m_fontSet.setFontColor("white");
            break;
        }
    }
    ThemeChanged(currentThemes);


}
