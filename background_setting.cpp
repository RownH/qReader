#include "background_setting.h"

background_setting::background_setting()
{

}

QString background_setting::getCurrentMusic()
{
    return m_Muic[currentMusic];
}
QString background_setting::getCurrentImg()
{
    return  m_Img[currentImg];
}

QColor background_setting::getBackColor()
{
    return m_backColor;
}
void background_setting::setBackColor(QColor color)
{
    m_backColor=color;

}
