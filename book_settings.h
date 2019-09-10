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
    int m_fontSize;//字体大小
    QColor m_fontColor;//字体颜色
    QColor m_backGroundColor;//背景颜色
    QString m_fontFamily;//字体类型
    double m_lineHeight;// 行高
    double m_wordSpaing;// 自距


};

#endif // BOOK_SETTINGS_H
