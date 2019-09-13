#include "read_view.h"

Read_View::Read_View(QObject *parent) : QObject(parent)
{
       m_currentBook=0;
       for (int i=0;i<4;i++) {
            Reader_Book *a=new Reader_Book();
            a->setBookName(i+"本书");
            Book_shelf.append(a);
       }
}

QQmlListProperty<Reader_Book> Read_View::books()
{
    return QQmlListProperty<Reader_Book>(this,this,
                            &Read_View::appendBooks,
                            &Read_View::booksCount,
                            &Read_View::booksAt,
                            &Read_View::clearBooks
                            );
}

int Read_View::booksCount()
{
    return Book_shelf.count();
}

void Read_View::appendBooks(Reader_Book *chapter)
{
    Book_shelf.append(chapter);
}

Reader_Book *Read_View::booksAt(int index)
{
    return Book_shelf.at(index);
}

void Read_View::clearBooks()
{
    Book_shelf.clear();
}

void Read_View::sorted()
{
    //排序
    return ;
}

int Read_View::currentBook()
{
    return m_currentBook;
}

void Read_View::setCurrentBook(int index)
{
    m_currentBook=index;
    currentBookChanged(index);
}



void Read_View::appendBooks(QQmlListProperty<Reader_Book> *list, Reader_Book *book)
{
    reinterpret_cast<Read_View*>(list->data)->appendBooks(book);
}

int Read_View::booksCount(QQmlListProperty<Reader_Book> *list)
{
    return  reinterpret_cast<Read_View*>(list->data)->booksCount();
}

Reader_Book *Read_View::booksAt(QQmlListProperty<Reader_Book> *list, int index)
{
    return reinterpret_cast<Read_View*>(list->data)->booksAt(index);
}

void Read_View::clearBooks(QQmlListProperty<Reader_Book> *list)
{
    return reinterpret_cast<Read_View*>(list->data)->clearBooks();

}

