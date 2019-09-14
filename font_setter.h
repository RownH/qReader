#ifndef FONT_SETTER_H
#define FONT_SETTER_H

#include <QObject>
#include<QColor>
#include<QFont>
class font_setter
{

public:
    explicit font_setter();
    int getFontSize()const;
    QString getFontColor()const;
    void setFontSize(int Size);
    void setFontColor(QString Color);
private:
    int m_fontSize;
    QString m_fontColor;
};

#endif // FONT_SETTER_H
