#ifndef READERCLASS_H
#define READERCLASS_H

#include <QObject>
#include<QList>
#include<QString>
#include<QQmlListProperty>
#include<chapter.h>
class ReaderClass : public QObject
{
    Q_OBJECT
public:
    explicit ReaderClass(QObject *parent = nullptr);
    Q_PROPERTY(int currentPage READ currentPage WRITE setCurrentPage NOTIFY currentPageChanged)
    Q_PROPERTY(int currentChart READ currentChart WRITE setCurrentChart NOTIFY currentChartChanged)
    Q_PROPERTY(QString bookSource READ bookSource WRITE setBookSource NOTIFY bookSourceChanged)
    Q_PROPERTY(QString content READ content WRITE setContent NOTIFY contentChanged)
    Q_PROPERTY(QQmlListProperty<Chapter>charts READ charts CONSTANT)

public:
   int currentPage()const;
   int currentChart()const;
   QString bookSource()const;
   QString content()const;

   void setCurrentPage(int page);
   void setCurrentChart(int chart);
   void setBookSource(QString booksource);
   void setContent(QString content);




signals:
     void currentPageChanged(int page);
     void currentChartChanged(int Chart);
     void bookSourceChanged(QString booksource);
     void contentChanged(QString content);
public slots:
     QQmlListProperty<Chapter> charts();
     int chartCount();
     void appendChart(Chapter*chapter);
     Chapter *chartAt(int index);
     void clearCharts();

public:
    static void appendChart(QQmlListProperty<Chapter>*,Chapter *chapter);
    static int chartCount(QQmlListProperty<Chapter>*);
    static Chapter * chartAt(QQmlListProperty<Chapter>*,int index);
    static void clearCharts(QQmlListProperty<Chapter>*);


private:
    int m_currentPage;  //当前页
    int m_currentChart;//当前章节

    QString m_bookSource;//当前目录
    QString m_content;//当前文章内容
    QList<Chapter*>m_charts;//不同的章节
};

#endif // READERCLASS_H
