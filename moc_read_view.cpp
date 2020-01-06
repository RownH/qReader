/****************************************************************************
** Meta object code from reading C++ file 'read_view.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "read_view.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'read_view.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Read_View_t {
    QByteArrayData data[13];
    char stringdata0[147];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Read_View_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Read_View_t qt_meta_stringdata_Read_View = {
    {
QT_MOC_LITERAL(0, 0, 9), // "Read_View"
QT_MOC_LITERAL(1, 10, 18), // "currentBookChanged"
QT_MOC_LITERAL(2, 29, 0), // ""
QT_MOC_LITERAL(3, 30, 5), // "books"
QT_MOC_LITERAL(4, 36, 29), // "QQmlListProperty<Reader_Book>"
QT_MOC_LITERAL(5, 66, 10), // "booksCount"
QT_MOC_LITERAL(6, 77, 11), // "appendBooks"
QT_MOC_LITERAL(7, 89, 12), // "Reader_Book*"
QT_MOC_LITERAL(8, 102, 7), // "chapter"
QT_MOC_LITERAL(9, 110, 7), // "booksAt"
QT_MOC_LITERAL(10, 118, 5), // "index"
QT_MOC_LITERAL(11, 124, 10), // "clearBooks"
QT_MOC_LITERAL(12, 135, 11) // "currentBook"

    },
    "Read_View\0currentBookChanged\0\0books\0"
    "QQmlListProperty<Reader_Book>\0booksCount\0"
    "appendBooks\0Reader_Book*\0chapter\0"
    "booksAt\0index\0clearBooks\0currentBook"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Read_View[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       2,   56, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       3,    0,   47,    2, 0x0a /* Public */,
       5,    0,   48,    2, 0x0a /* Public */,
       6,    1,   49,    2, 0x0a /* Public */,
       9,    1,   52,    2, 0x0a /* Public */,
      11,    0,   55,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Int,    2,

 // slots: parameters
    0x80000000 | 4,
    QMetaType::Int,
    QMetaType::Void, 0x80000000 | 7,    8,
    0x80000000 | 7, QMetaType::Int,   10,
    QMetaType::Void,

 // properties: name, type, flags
       3, 0x80000000 | 4, 0x00095409,
      12, QMetaType::Int, 0x00495103,

 // properties: notify_signal_id
       0,
       0,

       0        // eod
};

void Read_View::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Read_View *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->currentBookChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: { QQmlListProperty<Reader_Book> _r = _t->books();
            if (_a[0]) *reinterpret_cast< QQmlListProperty<Reader_Book>*>(_a[0]) = std::move(_r); }  break;
        case 2: { int _r = _t->booksCount();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 3: _t->appendBooks((*reinterpret_cast< Reader_Book*(*)>(_a[1]))); break;
        case 4: { Reader_Book* _r = _t->booksAt((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< Reader_Book**>(_a[0]) = std::move(_r); }  break;
        case 5: _t->clearBooks(); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 3:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< Reader_Book* >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Read_View::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Read_View::currentBookChanged)) {
                *result = 0;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Read_View *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QQmlListProperty<Reader_Book>*>(_v) = _t->books(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->currentBook(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Read_View *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 1: _t->setCurrentBook(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject Read_View::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_Read_View.data,
    qt_meta_data_Read_View,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *Read_View::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Read_View::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Read_View.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Read_View::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void Read_View::currentBookChanged(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
