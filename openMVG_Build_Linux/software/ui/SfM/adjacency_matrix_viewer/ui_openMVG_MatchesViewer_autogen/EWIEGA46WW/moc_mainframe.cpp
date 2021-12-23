/****************************************************************************
** Meta object code from reading C++ file 'mainframe.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../../../../../openMVG/src/software/ui/SfM/adjacency_matrix_viewer/mainframe.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mainframe.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_MainFrame_t {
    QByteArrayData data[11];
    char stringdata0[126];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MainFrame_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MainFrame_t qt_meta_stringdata_MainFrame = {
    {
QT_MOC_LITERAL(0, 0, 9), // "MainFrame"
QT_MOC_LITERAL(1, 10, 6), // "zoomIn"
QT_MOC_LITERAL(2, 17, 0), // ""
QT_MOC_LITERAL(3, 18, 5), // "level"
QT_MOC_LITERAL(4, 24, 7), // "zoomOut"
QT_MOC_LITERAL(5, 32, 9), // "resetView"
QT_MOC_LITERAL(6, 42, 21), // "setResetButtonEnabled"
QT_MOC_LITERAL(7, 64, 11), // "setupMatrix"
QT_MOC_LITERAL(8, 76, 17), // "togglePointerMode"
QT_MOC_LITERAL(9, 94, 12), // "toggleOpenGL"
QT_MOC_LITERAL(10, 107, 18) // "toggleAntialiasing"

    },
    "MainFrame\0zoomIn\0\0level\0zoomOut\0"
    "resetView\0setResetButtonEnabled\0"
    "setupMatrix\0togglePointerMode\0"
    "toggleOpenGL\0toggleAntialiasing"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MainFrame[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   64,    2, 0x0a /* Public */,
       1,    0,   67,    2, 0x2a /* Public | MethodCloned */,
       4,    1,   68,    2, 0x0a /* Public */,
       4,    0,   71,    2, 0x2a /* Public | MethodCloned */,
       5,    0,   72,    2, 0x0a /* Public */,
       6,    0,   73,    2, 0x08 /* Private */,
       7,    0,   74,    2, 0x08 /* Private */,
       8,    0,   75,    2, 0x08 /* Private */,
       9,    0,   76,    2, 0x08 /* Private */,
      10,    0,   77,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void MainFrame::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<MainFrame *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->zoomIn((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->zoomIn(); break;
        case 2: _t->zoomOut((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->zoomOut(); break;
        case 4: _t->resetView(); break;
        case 5: _t->setResetButtonEnabled(); break;
        case 6: _t->setupMatrix(); break;
        case 7: _t->togglePointerMode(); break;
        case 8: _t->toggleOpenGL(); break;
        case 9: _t->toggleAntialiasing(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject MainFrame::staticMetaObject = { {
    QMetaObject::SuperData::link<QFrame::staticMetaObject>(),
    qt_meta_stringdata_MainFrame.data,
    qt_meta_data_MainFrame,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *MainFrame::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MainFrame::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_MainFrame.stringdata0))
        return static_cast<void*>(this);
    return QFrame::qt_metacast(_clname);
}

int MainFrame::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QFrame::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
