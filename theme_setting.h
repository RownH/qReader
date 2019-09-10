#ifndef THEME_SETTING_H
#define THEME_SETTING_H

#include <QObject>
#include<font_setter.h>
#include<background_setting.h>
class Theme_setting : public QObject
{
    Q_OBJECT
    Q_ENUMS(Themes)
public:
    explicit Theme_setting(QObject *parent = nullptr);
    Q_PROPERTY(Themes Theme READ Theme WRITE setTheme NOTIFY ThemeChanged)
    enum Themes{
        WHITE,
        YELLOW,
        BISQUE,//暗黄色
        BLACK,
        GREEN,
        BLACKISH_GREEN
    };

signals:
    void ThemeChanged(Themes theme);
public slots:
    Themes Theme()const;
    void setTheme(Themes theme);
private:
    Themes currentThemes;
    background_setting m_backSetting;
    font_setter m_fontSet;

};

#endif // THEME_SETTING_H
