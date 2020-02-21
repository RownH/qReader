#include "read_view.h"
#include<QDir>
#include<QDebug>
Read_View::Read_View(QObject *parent) : QObject(parent)
{
       m_currentBook=0;

       loadDir();
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

    if(index>=0 && Book_shelf.size()>0)
        return Book_shelf.at(index);
    return nullptr;
}

void Read_View::clearBooks()
{
    for(int i=0;i<Book_shelf.count();i++){
        delete  Book_shelf[i];
    }
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
    if(index==m_currentBook)return;
    m_currentBook=index;
    currentBookChanged(index);
}

void Read_View::loadDir(QString path)
{
    QDir Dir(path);
    if(!Dir.exists())return ;
    for (unsigned i=2;i<Dir.count();i++) {
        loadBook(Dir.absolutePath()+"/"+Dir[i]+"/");
    }
}
void Read_View::loadBook(QString path)
{
    QDir Dir(path);
    if(!Dir.exists())return ;
    QString temContent;
    QString temName;
    Reader_Book *temBook=new Reader_Book;
    for (unsigned i=2;i<Dir.count();i++) {
          temName=Dir.absolutePath()+"/"+Dir[i];
          Book_chapter *chapt=new Book_chapter(temName,Dir[i]);
          temBook->appendChart(chapt);
    }
    Book_shelf.append(temBook);
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

