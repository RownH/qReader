#ifndef BOOK_SETTINGS_H
#define BOOK_SETTINGS_H
/*
    设置类
    控制界面的view显示


*/
#include <QObject>
#include<QColor>
class Book_settings : public QObject
{
    Q_OBJECT
public:
    explicit Book_settings(QObject *parent = nullptr);

signals:

public slots:

private:



};

#endif // BOOK_SETTINGS_H
