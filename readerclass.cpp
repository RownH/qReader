#include "readerclass.h"

ReaderClass::ReaderClass(QObject *parent) : QObject(parent)
{

}

int ReaderClass::currentPage() const
{
    return m_currentPage;
}
int ReaderClass::currentChart()const{
    return m_currentChart;
}
QString ReaderClass:: bookSource()const{
    return m_bookSource;
}
QString ReaderClass::content()const{
    return  m_content;
}

 void ReaderClass::setCurrentPage(int page){
    m_currentPage=page;
    emit currentPageChanged(page);
 }
void ReaderClass::setCurrentChart(int chart){
    m_currentChart=chart;
    emit currentChartChanged(chart);
}
void ReaderClass::setBookSource(QString booksource){
    m_bookSource=booksource;
    emit bookSourceChanged(booksource);
}
void ReaderClass::setContent(QString content){
    m_content=content;
    emit contentChanged(content);
}

QQmlListProperty<Chapter> ReaderClass::charts(){
    return  QQmlListProperty<Chapter>(this,this,&ReaderClass::appendChart,&ReaderClass::chartCount,&ReaderClass::chartAt,&ReaderClass::clearCharts);
 }
 int ReaderClass::chartCount(){
    return  m_charts.size();
 }
 void ReaderClass::appendChart(Chapter*chapter){
    m_charts.append(chapter);
 }
 Chapter *ReaderClass::chartAt(int index){
     return  m_charts.at(index);
 }
 void ReaderClass::clearCharts(){
     m_charts.clear();
 }

 void ReaderClass::appendChart(QQmlListProperty<Chapter>*list, Chapter *chapter)
 {
     reinterpret_cast<ReaderClass* >(list->data)->appendChart(chapter);
 }

 int ReaderClass::chartCount(QQmlListProperty<Chapter>*list)
 {
     return  reinterpret_cast<ReaderClass* >(list->data)->chartCount();
 }

 Chapter *ReaderClass::chartAt(QQmlListProperty<Chapter> *list, int index)
 {
    return  reinterpret_cast<ReaderClass*>(list->data)->chartAt(index);
 }

 void ReaderClass::clearCharts(QQmlListProperty<Chapter> *list)
 {
      reinterpret_cast<ReaderClass*>(list->data)->clearCharts();
 }
