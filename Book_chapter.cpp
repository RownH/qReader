#include "Book_chapter.h"
#include<QFile>
#include<QTextStream>
#include<QTextCodec>
Book_chapter::Book_chapter(QObject *parent): QObject(parent)
{
}

Book_chapter::Book_chapter(QString source, QString name, QObject *parent) : QObject(parent)
{
    m_source=source;
    m_name=name;
}


QString Book_chapter::name() const
{
    return m_name;
}

QString Book_chapter::source() const
{
    return m_source;
}

QString Book_chapter::str()
{
    if(m_str.isEmpty()){
        QFile f(m_source);
          QString str;
        if(!f.open(QIODevice::ReadOnly| QIODevice::Text))
        {
                return "打开错误 请联系管理员";
        }
        QTextStream txtInput(&f);
        while(!txtInput.atEnd())
        {
            str += txtInput.readLine();
        }
        f.close();
        m_str=str;

    }
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
