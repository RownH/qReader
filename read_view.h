#ifndef READ_VIEW_H
#define READ_VIEW_H

#include <QObject>
#include <QList>
#include<QQmlListProperty>
#include<QString>
#include<Reader_book.h>
#include<algorithm>
class Read_View : public QObject
{
    Q_OBJECT
public:
    explicit Read_View(QObject *parent = nullptr);
    Q_PROPERTY(QQmlListProperty<Reader_Book> books READ books CONSTANT)
    Q_PROPERTY(int currentBook READ currentBook WRITE setCurrentBook NOTIFY currentBookChanged)
signals:
     void currentBookChanged(int);

public slots:
     QQmlListProperty<Reader_Book> books();
     int booksCount();
     void appendBooks(Reader_Book *chapter);
     Reader_Book* booksAt(int index);
     void clearBooks();

public:

    void loadHistory();//加载历史记录
    void saveHistory();//保存记录
    void sorted();
    int currentBook();
    void setCurrentBook(int index);
<<<<<<< HEAD
    void loadDir(QString path="/run/media/root/759b8514-9f40-4637-bd8f-4200833df628/reader/qReader/book/");
=======
    void loadDir(QString path=":/book/");
//    void loadDir(QString path="./book/");
>>>>>>> a
    void loadBook(QString path);
    static void appendBooks(QQmlListProperty<Reader_Book>*,Reader_Book *chapter);
    static int booksCount(QQmlListProperty<Reader_Book>*);
    static Reader_Book * booksAt(QQmlListProperty<Reader_Book>*,int index);
    static void clearBooks(QQmlListProperty<Reader_Book>*);

private:
    int m_currentBook;
    QList<Reader_Book *>Book_shelf;
};

#endif // READ_VIEW_H
