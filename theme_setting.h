#ifndef THEME_SETTING_H
#define THEME_SETTING_H

#include <QObject>

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


};

#endif // THEME_SETTING_H
