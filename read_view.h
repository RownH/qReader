#ifndef READ_VIEW_H
#define READ_VIEW_H

#include <QObject>
#include <QList>
#include<QQmlListProperty>
#include<QString>
#include<Reader_book.h>
class Read_View : public QObject
{
    Q_OBJECT
public:
    explicit Read_View(QObject *parent = nullptr);
    Q_PROPERTY(QQmlListProperty<Reader_Book> books READ books)
signals:

public slots:
     QQmlListProperty<Reader_Book> books();
     int booksCount();
     void appendBooks(Reader_Book *chapter);
     Reader_Book* booksAt(int index);
     void clearBooks();

public:
    static void appendBooks(QQmlListProperty<Reader_Book>*,Reader_Book *chapter);
    static int booksCount(QQmlListProperty<Reader_Book>*);
    static Reader_Book * booksAt(QQmlListProperty<Reader_Book>*,int index);
    static void clearBooks(QQmlListProperty<Reader_Book>*);

private:
    QList<Reader_Book *>Book_shelf;
};

#endif // READ_VIEW_H
