#ifndef DATEMODEL_H
#define DATEMODEL_H

#include <QAbstractListModel>
#include<QString>
class Date{
public:
    Date(const QString &title,const QString &author,const QString& dynasty,const QString &content,const QString &image);
    QString title()const
    {
        return m_title;

    }
    QString author()const
    {
        return m_author;

    }
    QString dynasty()const{
        return m_dynasty;
    }
    QString content()const{
        return m_content;
    }
    QString image()const    {
        return m_image;
    }
private:
    QString m_title;
    QString m_author;
    QString m_dynasty;
    QString m_content;
    QString m_image;

};
class dateModel : public QAbstractListModel
{
    Q_OBJECT

public:
    explicit dateModel(QObject *parent = nullptr);
    enum DataRoles{
        TITLE_ROLER=Qt::UserRole +1,
        AUTHOR_ROLER,
        DYNASTY_ROLER,
        CONTENT_ROLER,
        IMAGE_ROLER
    };

    // Basic functionality:
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    void insert(int index,const Date &date);
    void append(const QString &title,const QString &author,const QString &dysty,const QString &content,const QString &image);
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

protected: // interface QAbstractListModel
    virtual QHash<int, QByteArray> roleNames() const;
private:
    QList<Date>m_datas;
};

#endif // DATEMODEL_H
