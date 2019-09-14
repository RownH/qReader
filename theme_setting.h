#ifndef THEME_SETTING_H
#define THEME_SETTING_H

#include<font_setter.h>
#include<background_setting.h>

class Theme_setting
{

public:
    explicit Theme_setting();


public:
    int Theme()const;
    void setTheme(int theme);

    background_setting m_backSet;
    font_setter m_fontSet;
private:
    int currentThemes;
};

#endif // THEME_SETTING_H
