#include "Book_chapter.h"

Book_chapter::Book_chapter(QObject *parent) : QObject(parent)
{

}


QString Book_chapter::name() const
{
    return m_name;
}

QString Book_chapter::source() const
{
    return m_source;
}

QString Book_chapter::str() const
{
    return m_str;
}

void Book_chapter::setSource(QString source)
{
    m_source=source;
    emit(sourceChanged());
}

void Book_chapter::setName(QString name)
{
    m_name=name;
    emit(nameChanged());
}

void Book_chapter::setStr(QString str)
{
    m_str=str;
    emit(strChanged());
}
