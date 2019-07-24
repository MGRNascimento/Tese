/****************************************************************************
** Meta object code from reading C++ file 'wasd_teleop_tool.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/vizzy/vizzy_rviz_plugins/include/vizzy_rviz_plugins/wasd_teleop_tool.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'wasd_teleop_tool.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_vizzy_rviz_plugins__WasdTeleopTool_t {
    QByteArrayData data[7];
    char stringdata0[119];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_vizzy_rviz_plugins__WasdTeleopTool_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_vizzy_rviz_plugins__WasdTeleopTool_t qt_meta_stringdata_vizzy_rviz_plugins__WasdTeleopTool = {
    {
QT_MOC_LITERAL(0, 0, 34), // "vizzy_rviz_plugins::WasdTeleo..."
QT_MOC_LITERAL(1, 35, 18), // "maxLinearVelUpdate"
QT_MOC_LITERAL(2, 54, 0), // ""
QT_MOC_LITERAL(3, 55, 19), // "maxAngularVelUpdate"
QT_MOC_LITERAL(4, 75, 7), // "sendVel"
QT_MOC_LITERAL(5, 83, 11), // "updateTopic"
QT_MOC_LITERAL(6, 95, 23) // "updateActionCancelTopic"

    },
    "vizzy_rviz_plugins::WasdTeleopTool\0"
    "maxLinearVelUpdate\0\0maxAngularVelUpdate\0"
    "sendVel\0updateTopic\0updateActionCancelTopic"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_vizzy_rviz_plugins__WasdTeleopTool[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   39,    2, 0x09 /* Protected */,
       3,    0,   40,    2, 0x09 /* Protected */,
       4,    0,   41,    2, 0x09 /* Protected */,
       5,    0,   42,    2, 0x09 /* Protected */,
       6,    0,   43,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void vizzy_rviz_plugins::WasdTeleopTool::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        WasdTeleopTool *_t = static_cast<WasdTeleopTool *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->maxLinearVelUpdate(); break;
        case 1: _t->maxAngularVelUpdate(); break;
        case 2: _t->sendVel(); break;
        case 3: _t->updateTopic(); break;
        case 4: _t->updateActionCancelTopic(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject vizzy_rviz_plugins::WasdTeleopTool::staticMetaObject = {
    { &rviz::Tool::staticMetaObject, qt_meta_stringdata_vizzy_rviz_plugins__WasdTeleopTool.data,
      qt_meta_data_vizzy_rviz_plugins__WasdTeleopTool,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *vizzy_rviz_plugins::WasdTeleopTool::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *vizzy_rviz_plugins::WasdTeleopTool::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_vizzy_rviz_plugins__WasdTeleopTool.stringdata0))
        return static_cast<void*>(const_cast< WasdTeleopTool*>(this));
    return rviz::Tool::qt_metacast(_clname);
}

int vizzy_rviz_plugins::WasdTeleopTool::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Tool::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
