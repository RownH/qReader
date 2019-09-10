#include "font_setter.h"

font_setter::font_setter()
{
    m_fontSize=16;      //默认值
    m_fontColor="black";
}

int font_setter::getFontSize()
{
    return m_fontSize;
}
QColor font_setter::getFontColor()
{
        return m_fontColor;
}
void font_setter::setFontSize(int Size)
{
        m_fontSize=Size;
}
void font_setter::setFontColor(QColor Color)
{
        m_fontColor=Color;
}
