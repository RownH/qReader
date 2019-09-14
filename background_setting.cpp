#include "background_setting.h"

background_setting::background_setting()
{

}

QString background_setting::getCurrentMusic()const
{
    return m_Muic[currentMusic];
}
QString background_setting::getCurrentImg()const
{
    return  m_Img[currentImg];
}

QString background_setting::getBackColor()const
{
    return m_backColor;
}
void background_setting::setBackColor(QString color)
{
    m_backColor=color;

}
