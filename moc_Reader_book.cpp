/****************************************************************************
** Meta object code from reading C++ file 'Reader_book.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "Reader_book.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'Reader_book.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Reader_Book_t {
    QByteArrayData data[27];
    char stringdata0[329];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Reader_Book_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Reader_Book_t qt_meta_stringdata_Reader_Book = {
    {
QT_MOC_LITERAL(0, 0, 11), // "Reader_Book"
QT_MOC_LITERAL(1, 12, 15), // "bookNameChanged"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 4), // "name"
QT_MOC_LITERAL(4, 34, 18), // "currentPageChanged"
QT_MOC_LITERAL(5, 53, 4), // "page"
QT_MOC_LITERAL(6, 58, 19), // "currentChartChanged"
QT_MOC_LITERAL(7, 78, 5), // "Chart"
QT_MOC_LITERAL(8, 84, 17), // "bookSourceChanged"
QT_MOC_LITERAL(9, 102, 10), // "booksource"
QT_MOC_LITERAL(10, 113, 14), // "contentChanged"
QT_MOC_LITERAL(11, 128, 7), // "content"
QT_MOC_LITERAL(12, 136, 22), // "lastVisitedTimeChanged"
QT_MOC_LITERAL(13, 159, 6), // "charts"
QT_MOC_LITERAL(14, 166, 30), // "QQmlListProperty<Book_chapter>"
QT_MOC_LITERAL(15, 197, 10), // "chartCount"
QT_MOC_LITERAL(16, 208, 11), // "appendChart"
QT_MOC_LITERAL(17, 220, 13), // "Book_chapter*"
QT_MOC_LITERAL(18, 234, 7), // "chapter"
QT_MOC_LITERAL(19, 242, 7), // "chartAt"
QT_MOC_LITERAL(20, 250, 5), // "index"
QT_MOC_LITERAL(21, 256, 11), // "clearCharts"
QT_MOC_LITERAL(22, 268, 8), // "bookName"
QT_MOC_LITERAL(23, 277, 11), // "currentPage"
QT_MOC_LITERAL(24, 289, 12), // "currentChart"
QT_MOC_LITERAL(25, 302, 10), // "bookSource"
QT_MOC_LITERAL(26, 313, 15) // "lastVisitedTime"

    },
    "Reader_Book\0bookNameChanged\0\0name\0"
    "currentPageChanged\0page\0currentChartChanged\0"
    "Chart\0bookSourceChanged\0booksource\0"
    "contentChanged\0content\0lastVisitedTimeChanged\0"
    "charts\0QQmlListProperty<Book_chapter>\0"
    "chartCount\0appendChart\0Book_chapter*\0"
    "chapter\0chartAt\0index\0clearCharts\0"
    "bookName\0currentPage\0currentChart\0"
    "bookSource\0lastVisitedTime"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Reader_Book[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       7,   94, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       6,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   69,    2, 0x06 /* Public */,
       4,    1,   72,    2, 0x06 /* Public */,
       6,    1,   75,    2, 0x06 /* Public */,
       8,    1,   78,    2, 0x06 /* Public */,
      10,    1,   81,    2, 0x06 /* Public */,
      12,    0,   84,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      13,    0,   85,    2, 0x0a /* Public */,
      15,    0,   86,    2, 0x0a /* Public */,
      16,    1,   87,    2, 0x0a /* Public */,
      19,    1,   90,    2, 0x0a /* Public */,
      21,    0,   93,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::Int,    5,
    QMetaType::Void, QMetaType::Int,    7,
    QMetaType::Void, QMetaType::QString,    9,
    QMetaType::Void, QMetaType::QString,   11,
    QMetaType::Void,

 // slots: parameters
    0x80000000 | 14,
    QMetaType::Int,
    QMetaType::Void, 0x80000000 | 17,   18,
    0x80000000 | 17, QMetaType::Int,   20,
    QMetaType::Void,

 // properties: name, type, flags
      22, QMetaType::QString, 0x00495103,
      23, QMetaType::Int, 0x00495103,
      24, QMetaType::Int, 0x00495103,
      25, QMetaType::QString, 0x00495103,
      11, QMetaType::QString, 0x00495103,
      13, 0x80000000 | 14, 0x00095409,
      26, QMetaType::UInt, 0x00495103,

 // properties: notify_signal_id
       0,
       1,
       2,
       3,
       4,
       0,
       5,

       0        // eod
};

void Reader_Book::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Reader_Book *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->bookNameChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->currentPageChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->currentChartChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->bookSourceChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->contentChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->lastVisitedTimeChanged(); break;
        case 6: { QQmlListProperty<Book_chapter> _r = _t->charts();
            if (_a[0]) *reinterpret_cast< QQmlListProperty<Book_chapter>*>(_a[0]) = std::move(_r); }  break;
        case 7: { int _r = _t->chartCount();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 8: _t->appendChart((*reinterpret_cast< Book_chapter*(*)>(_a[1]))); break;
        case 9: { Book_chapter* _r = _t->chartAt((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< Book_chapter**>(_a[0]) = std::move(_r); }  break;
        case 10: _t->clearCharts(); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 8:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< Book_chapter* >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Reader_Book::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Reader_Book::bookNameChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Reader_Book::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Reader_Book::currentPageChanged)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Reader_Book::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Reader_Book::currentChartChanged)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Reader_Book::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Reader_Book::bookSourceChanged)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (Reader_Book::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Reader_Book::contentChanged)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (Reader_Book::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Reader_Book::lastVisitedTimeChanged)) {
                *result = 5;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Reader_Book *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->bookName(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->currentPage(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->currentChart(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->bookSource(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->content(); break;
        case 5: *reinterpret_cast< QQmlListProperty<Book_chapter>*>(_v) = _t->charts(); break;
        case 6: *reinterpret_cast< uint*>(_v) = _t->lastVisitedTime(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Reader_Book *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setBookName(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setCurrentPage(*reinterpret_cast< int*>(_v)); break;
        case 2: _t->setCurrentChart(*reinterpret_cast< int*>(_v)); break;
        case 3: _t->setBookSource(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->setContent(*reinterpret_cast< QString*>(_v)); break;
        case 6: _t->setLastVisitedTime(*reinterpret_cast< uint*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject Reader_Book::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_Reader_Book.data,
    qt_meta_data_Reader_Book,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *Reader_Book::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Reader_Book::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Reader_Book.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Reader_Book::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 7;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void Reader_Book::bookNameChanged(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Reader_Book::currentPageChanged(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void Reader_Book::currentChartChanged(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void Reader_Book::bookSourceChanged(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void Reader_Book::contentChanged(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void Reader_Book::lastVisitedTimeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
