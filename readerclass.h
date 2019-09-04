#ifndef READERCLASS_H
#define READERCLASS_H

#include <QObject>

class ReaderClass : public QObject
{
    Q_OBJECT
public:
    explicit ReaderClass(QObject *parent = nullptr);

signals:

public slots:
};

#endif // READERCLASS_H
