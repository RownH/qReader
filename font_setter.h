#ifndef FONT_SETTER_H
#define FONT_SETTER_H

#include <QObject>
#include<QColor>
#include<QFont>
class font_setter
{

public:
    explicit font_setter();
    int getFontSize();
    QColor getFontColor();
    void setFontSize(int Size);
    void setFontColor(QColor Color);
private:
    int m_fontSize;
    QColor m_fontColor;
};

#endif // FONT_SETTER_H
