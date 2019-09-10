#ifndef Reader_Book_H
#define Reader_Book_H

#include <QObject>
#include<QList>
#include<QString>
#include<QQmlListProperty>
#include<Book_chapter.h>
class Reader_Book : public QObject
{
    Q_OBJECT
public:
    explicit Reader_Book(QObject *parent = nullptr);
    Q_PROPERTY(int currentPage READ currentPage WRITE setCurrentPage NOTIFY currentPageChanged)
    Q_PROPERTY(int currentChart READ currentChart WRITE setCurrentChart NOTIFY currentChartChanged)
    Q_PROPERTY(QString bookSource READ bookSource WRITE setBookSource NOTIFY bookSourceChanged)
    Q_PROPERTY(QString content READ content WRITE setContent NOTIFY contentChanged)
    Q_PROPERTY(QQmlListProperty<Book_chapter>charts READ charts CONSTANT)

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
     QQmlListProperty<Book_chapter> charts();
     int chartCount();
     void appendChart(Book_chapter*chapter);
     Book_chapter *chartAt(int index);
     void clearCharts();

public:
    static void appendChart(QQmlListProperty<Book_chapter>*,Book_chapter *chapter);
    static int chartCount(QQmlListProperty<Book_chapter>*);
    static Book_chapter * chartAt(QQmlListProperty<Book_chapter>*,int index);
    static void clearCharts(QQmlListProperty<Book_chapter>*);


private:
    int m_currentPage;  //当前页
    int m_currentChart;//当前章节

    QString m_bookSource;//当前目录
    QString m_content;//当前文章内容
    QList<Book_chapter*>m_charts;//不同的章节
};

#endif // Reader_Book_H
