#ifndef THEME_SETTING_H
#define THEME_SETTING_H

#include<font_setter.h>
#include<background_setting.h>
#define WHITE 0
#define YELLOW 1
#define BISQUE 2//暗黄色
#define BLACK 3
#define GREEN 4
#define BLACKISH_GREEN 5
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
