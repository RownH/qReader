#include "Reader_book.h"
#include<QDir>
#include<QTextStream>
#include<QDebug>
Reader_Book::Reader_Book(QObject *parent) : QObject(parent)
{
        m_currentPage=0;
        m_currentChart=0;
        m_name=" ";
        m_bookSource="";
        m_image="";
        m_content=" ";
        //loadChapter();
        //第一次打开时也需要加载
}


int Reader_Book::currentPage() const
{
    return m_currentPage;
}
int Reader_Book::currentChart()const{
    return m_currentChart;
}

QString Reader_Book::bookName() const
{
    return m_name;
}
QString Reader_Book:: bookSource()const{
    return m_bookSource;
}
QString Reader_Book::content()const{
    return  m_content;
}

void Reader_Book::setBookName(QString name)
{
    m_name=name;
    bookNameChanged(name);
}
 void Reader_Book::setCurrentPage(int page){
    m_currentPage=page;
    emit currentPageChanged(page);
 }
void Reader_Book::setCurrentChart(int chart){
    m_currentChart=chart;
    m_charts[m_currentChart]->setStr("");
    emit currentChartChanged(chart);
}
void Reader_Book::setBookSource(QString booksource){
    m_bookSource=booksource;
    emit bookSourceChanged(booksource);
}
void Reader_Book::setContent(QString content){
    m_content=content;
    emit contentChanged(content);
}


unsigned int Reader_Book::lastVisitedTime()
{
    return last_visted_time;
}

void Reader_Book::setLastVisitedTime(unsigned int lastTime)
{
    last_visted_time=lastTime;
    lastVisitedTimeChanged();
}



QQmlListProperty<Book_chapter> Reader_Book::charts(){

    return   QQmlListProperty<Book_chapter>(this,this,
                                           &Reader_Book::appendChart,
                                           &Reader_Book::chartCount,
                                           &Reader_Book::chartAt,
                                           &Reader_Book::clearCharts);
 }
 int Reader_Book::chartCount(){
    return  m_charts.size();
 }
 void Reader_Book::appendChart(Book_chapter*chapter){
    m_charts.append(chapter);
 }
 Book_chapter *Reader_Book::chartAt(int index){
     if(index>=0)
    return  m_charts.at(index);
     return nullptr;
 }
 void Reader_Book::clearCharts(){
      for (auto &i:m_charts)
      {
          delete i;
      }
     m_charts.clear();
 }

 void Reader_Book::appendChart(QQmlListProperty<Book_chapter>*list, Book_chapter *chapter)
 {
     reinterpret_cast<Reader_Book* >(list->data)->appendChart(chapter);
 }

 int Reader_Book::chartCount(QQmlListProperty<Book_chapter>*list)
 {
     return  reinterpret_cast<Reader_Book* >(list->data)->chartCount();
 }

 Book_chapter *Reader_Book::chartAt(QQmlListProperty<Book_chapter> *list, int index)
 {
    return  reinterpret_cast<Reader_Book*>(list->data)->chartAt(index);
 }

 void Reader_Book::clearCharts(QQmlListProperty<Book_chapter> *list)
 {
     reinterpret_cast<Reader_Book*>(list->data)->clearCharts();
 }
