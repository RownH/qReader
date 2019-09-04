#ifndef CHAPTER_H
#define CHAPTER_H

#include <QObject>

class Chapter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString source READ source WRITE setSource)
    Q_PROPERTY(QString name READ name WRITE setName)
    Q_PROPERTY(QString str READ str WRITE setStr)
public:
    explicit Chapter(QObject *parent = nullptr);

    QString name()const;
    QString source()const;
    QString str()const;

    void setSource(QString source);
    void setName(QString name);
    void setStr(QString str);
signals:


public slots:
private:
        QString m_source;
        QString m_name;
        QString m_str;
};

#endif // CHAPTER_H
