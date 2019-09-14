#ifndef BACKGROUND_SETTING_H
#define BACKGROUND_SETTING_H
/*
    背景设置  背景图片  音乐设置

*/
#include<QList>
#include<QColor>
class background_setting
{
public:
    background_setting(); 
    QString getCurrentMusic()const;
    QString getCurrentImg()const;
    QString getBackColor()const;
    void setBackColor(QString color);
private:
    int currentMusic;//当前背景音乐
    int currentImg;//当前背景图片
    QList<QString>m_Muic;//背景音乐
    QList<QString>m_Img;//背景图片
    QString m_backColor;//背景颜色
};

#endif // BACKGROUND_SETTING_H
