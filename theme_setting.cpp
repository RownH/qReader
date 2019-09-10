#include "theme_setting.h"

Theme_setting::Theme_setting(QObject *parent) : QObject(parent)
{

}

Theme_setting::Themes Theme_setting::Theme() const
{
    return  currentThemes;
}

void Theme_setting::setTheme(Themes theme)
{
    currentThemes=theme;
}
