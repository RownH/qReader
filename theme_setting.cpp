#include "theme_setting.h"

Theme_setting::Theme_setting()
{
    currentThemes=BLACK;
    m_backSet.setBackColor("black");
    m_fontSet.setFontColor("white");

}

int Theme_setting::Theme() const
{
    return  currentThemes;
}

void Theme_setting::setTheme(int theme)
{
    if(currentThemes==theme)return;
    currentThemes=theme;
    switch (currentThemes) {
        case WHITE:{
              m_backSet.setBackColor("black");
              m_fontSet.setFontColor("white");
              break;
        }
        case YELLOW:{
                m_backSet.setBackColor("#FFFACD");
                m_fontSet.setFontColor("BLACK");
                break;
            }
        case BISQUE:{
                m_backSet.setBackColor("#FFE4C4");
                m_fontSet.setFontColor("BLACK");
        }
        case BLACK:{
                m_backSet.setBackColor("#808080");
                m_fontSet.setFontColor("WHITE");
                break;
        }
        case GREEN:{
                m_backSet.setBackColor("#CCFF99");
                m_fontSet.setFontColor("WHITE");
                break;
        }
        case BLACKISH_GREEN:{
            m_backSet.setBackColor("#336666");
            m_fontSet.setFontColor("WHITE");
            break;
        }
        default:{
            m_backSet.setBackColor("black");
            m_fontSet.setFontColor("white");
            break;
        }
    }


}
