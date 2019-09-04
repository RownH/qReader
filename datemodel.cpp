#include "datemodel.h"

Date::Date(const QString &title, const QString &author, const QString &dynasty, const QString &content, const QString &image):m_title(title),m_author(author),m_dynasty(dynasty),m_content(content),m_image(image)
{

}

dateModel::dateModel(QObject *parent)
    : QAbstractListModel(parent)
{

}
int dateModel::rowCount(const QModelIndex &parent) const
{
    // For list models only the root node (an invalid parent) should return the list's size. For all
    // other (valid) parents, rowCount() should return 0 so that it does not become a tree model.
    if (parent.isValid())
        return 0;
     return m_datas.count();
     // FIXME: Implement me!
}

void dateModel::insert(int index, const Date &date)
{
    if(index<0||index>m_datas.count()){
        return ;
    }
    emit beginInsertRows(QModelIndex(),index,index);
    m_datas.insert(index,date);
    emit endInsertRows();
}

void dateModel::append(const QString &title, const QString &author, const QString &dynsty,const QString &content, const QString &image)
{
    const Date &date=Date(title,author,dynsty,content,image);
    insert(m_datas.count(),date);

}
QVariant dateModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();
    int row=index.row();
    const Date &date=m_datas[row];
    switch (role) {
       case TITLE_ROLER:
            return date.title();
       case AUTHOR_ROLER:
            return date.author();
       case CONTENT_ROLER:
            return date.content();
       case DYNASTY_ROLER:
            return date.dynasty();
       case IMAGE_ROLER:
            return date.image();
    }
    // FIXME: Implement me!
    return QVariant();
}
QHash<int, QByteArray> dateModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[TITLE_ROLER] = "poem_title";
    roles[AUTHOR_ROLER] = "poem_author";
    roles[CONTENT_ROLER]="poem_content";
    roles[DYNASTY_ROLER]="poem_dynasty";
    roles[IMAGE_ROLER]="poem_images";
    return roles;
}
