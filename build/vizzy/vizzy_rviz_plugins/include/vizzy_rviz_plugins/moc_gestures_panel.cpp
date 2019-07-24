/****************************************************************************
** Meta object code from reading C++ file 'gestures_panel.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/vizzy/vizzy_rviz_plugins/include/vizzy_rviz_plugins/gestures_panel.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gestures_panel.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_vizzy_rviz_plugins__GesturesPanel_t {
    QByteArrayData data[11];
    char stringdata0[113];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_vizzy_rviz_plugins__GesturesPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_vizzy_rviz_plugins__GesturesPanel_t qt_meta_stringdata_vizzy_rviz_plugins__GesturesPanel = {
    {
QT_MOC_LITERAL(0, 0, 33), // "vizzy_rviz_plugins::GesturesP..."
QT_MOC_LITERAL(1, 34, 8), // "setTopic"
QT_MOC_LITERAL(2, 43, 0), // ""
QT_MOC_LITERAL(3, 44, 5), // "topic"
QT_MOC_LITERAL(4, 50, 4), // "home"
QT_MOC_LITERAL(5, 55, 4), // "wave"
QT_MOC_LITERAL(6, 60, 7), // "stretch"
QT_MOC_LITERAL(7, 68, 9), // "handshake"
QT_MOC_LITERAL(8, 78, 8), // "askshake"
QT_MOC_LITERAL(9, 87, 13), // "handshake_pid"
QT_MOC_LITERAL(10, 101, 11) // "updateTopic"

    },
    "vizzy_rviz_plugins::GesturesPanel\0"
    "setTopic\0\0topic\0home\0wave\0stretch\0"
    "handshake\0askshake\0handshake_pid\0"
    "updateTopic"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_vizzy_rviz_plugins__GesturesPanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   54,    2, 0x0a /* Public */,
       4,    0,   57,    2, 0x0a /* Public */,
       5,    0,   58,    2, 0x0a /* Public */,
       6,    0,   59,    2, 0x0a /* Public */,
       7,    0,   60,    2, 0x0a /* Public */,
       8,    0,   61,    2, 0x0a /* Public */,
       9,    0,   62,    2, 0x0a /* Public */,
      10,    0,   63,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void vizzy_rviz_plugins::GesturesPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        GesturesPanel *_t = static_cast<GesturesPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setTopic((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->home(); break;
        case 2: _t->wave(); break;
        case 3: _t->stretch(); break;
        case 4: _t->handshake(); break;
        case 5: _t->askshake(); break;
        case 6: _t->handshake_pid(); break;
        case 7: _t->updateTopic(); break;
        default: ;
        }
    }
}

const QMetaObject vizzy_rviz_plugins::GesturesPanel::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_vizzy_rviz_plugins__GesturesPanel.data,
      qt_meta_data_vizzy_rviz_plugins__GesturesPanel,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *vizzy_rviz_plugins::GesturesPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *vizzy_rviz_plugins::GesturesPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_vizzy_rviz_plugins__GesturesPanel.stringdata0))
        return static_cast<void*>(const_cast< GesturesPanel*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int vizzy_rviz_plugins::GesturesPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
