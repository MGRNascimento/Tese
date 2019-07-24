/****************************************************************************
** Meta object code from reading C++ file 'clickable_gaze_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/vizzy/vizzy_rviz_plugins/include/vizzy_rviz_plugins/clickable_gaze_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'clickable_gaze_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_vizzy_rviz_plugins__InteractiveRenderPanel_t {
    QByteArrayData data[5];
    char stringdata0[81];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_vizzy_rviz_plugins__InteractiveRenderPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_vizzy_rviz_plugins__InteractiveRenderPanel_t qt_meta_stringdata_vizzy_rviz_plugins__InteractiveRenderPanel = {
    {
QT_MOC_LITERAL(0, 0, 42), // "vizzy_rviz_plugins::Interacti..."
QT_MOC_LITERAL(1, 43, 17), // "mouseEventHandler"
QT_MOC_LITERAL(2, 61, 0), // ""
QT_MOC_LITERAL(3, 62, 12), // "QMouseEvent*"
QT_MOC_LITERAL(4, 75, 5) // "event"

    },
    "vizzy_rviz_plugins::InteractiveRenderPanel\0"
    "mouseEventHandler\0\0QMouseEvent*\0event"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_vizzy_rviz_plugins__InteractiveRenderPanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   19,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,

       0        // eod
};

void vizzy_rviz_plugins::InteractiveRenderPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        InteractiveRenderPanel *_t = static_cast<InteractiveRenderPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->mouseEventHandler((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (InteractiveRenderPanel::*_t)(QMouseEvent * );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&InteractiveRenderPanel::mouseEventHandler)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject vizzy_rviz_plugins::InteractiveRenderPanel::staticMetaObject = {
    { &rviz::RenderPanel::staticMetaObject, qt_meta_stringdata_vizzy_rviz_plugins__InteractiveRenderPanel.data,
      qt_meta_data_vizzy_rviz_plugins__InteractiveRenderPanel,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *vizzy_rviz_plugins::InteractiveRenderPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *vizzy_rviz_plugins::InteractiveRenderPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_vizzy_rviz_plugins__InteractiveRenderPanel.stringdata0))
        return static_cast<void*>(const_cast< InteractiveRenderPanel*>(this));
    return rviz::RenderPanel::qt_metacast(_clname);
}

int vizzy_rviz_plugins::InteractiveRenderPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::RenderPanel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}

// SIGNAL 0
void vizzy_rviz_plugins::InteractiveRenderPanel::mouseEventHandler(QMouseEvent * _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
struct qt_meta_stringdata_vizzy_rviz_plugins__ClickableGazeDisplay_t {
    QByteArrayData data[6];
    char stringdata0[102];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_vizzy_rviz_plugins__ClickableGazeDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_vizzy_rviz_plugins__ClickableGazeDisplay_t qt_meta_stringdata_vizzy_rviz_plugins__ClickableGazeDisplay = {
    {
QT_MOC_LITERAL(0, 0, 40), // "vizzy_rviz_plugins::Clickable..."
QT_MOC_LITERAL(1, 41, 22), // "updateNormalizeOptions"
QT_MOC_LITERAL(2, 64, 0), // ""
QT_MOC_LITERAL(3, 65, 17), // "mouseEventHandler"
QT_MOC_LITERAL(4, 83, 12), // "QMouseEvent*"
QT_MOC_LITERAL(5, 96, 5) // "event"

    },
    "vizzy_rviz_plugins::ClickableGazeDisplay\0"
    "updateNormalizeOptions\0\0mouseEventHandler\0"
    "QMouseEvent*\0event"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_vizzy_rviz_plugins__ClickableGazeDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   24,    2, 0x0a /* Public */,
       3,    1,   25,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 4,    5,

       0        // eod
};

void vizzy_rviz_plugins::ClickableGazeDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ClickableGazeDisplay *_t = static_cast<ClickableGazeDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateNormalizeOptions(); break;
        case 1: _t->mouseEventHandler((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject vizzy_rviz_plugins::ClickableGazeDisplay::staticMetaObject = {
    { &rviz::ImageDisplayBase::staticMetaObject, qt_meta_stringdata_vizzy_rviz_plugins__ClickableGazeDisplay.data,
      qt_meta_data_vizzy_rviz_plugins__ClickableGazeDisplay,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *vizzy_rviz_plugins::ClickableGazeDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *vizzy_rviz_plugins::ClickableGazeDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_vizzy_rviz_plugins__ClickableGazeDisplay.stringdata0))
        return static_cast<void*>(const_cast< ClickableGazeDisplay*>(this));
    return rviz::ImageDisplayBase::qt_metacast(_clname);
}

int vizzy_rviz_plugins::ClickableGazeDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::ImageDisplayBase::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
