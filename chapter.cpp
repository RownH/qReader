#include "chapter.h"

Chapter::Chapter(QObject *parent) : QObject(parent)
{

}

QString Chapter::name() const
{
    return m_name;
}

QString Chapter::source() const
{
    return m_source;
}

QString Chapter::str() const
{
    return m_str;
}

void Chapter::setSource(QString source)
{
    m_source=source;
}

void Chapter::setName(QString name)
{
    m_name=name;
}

void Chapter::setStr(QString str)
{
    m_str=str;
}
