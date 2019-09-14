#include "theme_setting.h"

Theme_setting::Theme_setting()
{

}

int Theme_setting::Theme() const
{
    return  currentThemes;
}

void Theme_setting::setTheme(int theme)
{
    if(currentThemes==theme)return;
    currentThemes=theme;

}
