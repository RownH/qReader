#ifndef Book_chapter_H
#define Book_chapter_H

#include <QObject>

class Book_chapter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString source READ source WRITE setSource  NOTIFY sourceChanged)
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString str READ str WRITE setStr NOTIFY strChanged)
public:
    explicit Book_chapter(QObject *parent = nullptr);

    QString name()const;
    QString source()const;
    QString str()const;

    void setSource(QString source);
    void setName(QString name);
    void setStr(QString str);
signals:
    void sourceChanged();
    void nameChanged();
    void strChanged();
public slots:

private:
        QString m_source;
        QString m_name;
        QString m_str;
};

#endif // Book_chapter_H
