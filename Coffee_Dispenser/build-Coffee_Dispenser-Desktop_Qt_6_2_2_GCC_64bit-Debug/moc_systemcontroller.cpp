/****************************************************************************
** Meta object code from reading C++ file 'systemcontroller.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.2.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../Coffee_Dispenser/controller/systemcontroller.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'systemcontroller.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.2.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_SystemController_t {
    const uint offsetsAndSize[34];
    char stringdata0[197];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(offsetof(qt_meta_stringdata_SystemController_t, stringdata0) + ofs), len 
static const qt_meta_stringdata_SystemController_t qt_meta_stringdata_SystemController = {
    {
QT_MOC_LITERAL(0, 16), // "SystemController"
QT_MOC_LITERAL(17, 16), // "drinkTypeChanged"
QT_MOC_LITERAL(34, 0), // ""
QT_MOC_LITERAL(35, 9), // "drinkType"
QT_MOC_LITERAL(45, 20), // "drinkIconTypeChanged"
QT_MOC_LITERAL(66, 16), // "drinkSizeChanged"
QT_MOC_LITERAL(83, 9), // "DrinkSize"
QT_MOC_LITERAL(93, 9), // "drinkSize"
QT_MOC_LITERAL(103, 12), // "setDrinkType"
QT_MOC_LITERAL(116, 16), // "setDrinkIconType"
QT_MOC_LITERAL(133, 12), // "setDrinkSize"
QT_MOC_LITERAL(146, 10), // "startOrder"
QT_MOC_LITERAL(157, 13), // "drinkIconType"
QT_MOC_LITERAL(171, 6), // "NOSIZE"
QT_MOC_LITERAL(178, 5), // "SMALL"
QT_MOC_LITERAL(184, 6), // "MEDIUM"
QT_MOC_LITERAL(191, 5) // "LARGE"

    },
    "SystemController\0drinkTypeChanged\0\0"
    "drinkType\0drinkIconTypeChanged\0"
    "drinkSizeChanged\0DrinkSize\0drinkSize\0"
    "setDrinkType\0setDrinkIconType\0"
    "setDrinkSize\0startOrder\0drinkIconType\0"
    "NOSIZE\0SMALL\0MEDIUM\0LARGE"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_SystemController[] = {

 // content:
      10,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       3,   75, // properties
       1,   90, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    1,   56,    2, 0x06,    4 /* Public */,
       4,    1,   59,    2, 0x06,    6 /* Public */,
       5,    1,   62,    2, 0x06,    8 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       8,    1,   65,    2, 0x0a,   10 /* Public */,
       9,    1,   68,    2, 0x0a,   12 /* Public */,
      10,    1,   71,    2, 0x0a,   14 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
      11,    0,   74,    2, 0x02,   16 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, 0x80000000 | 6,    7,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, 0x80000000 | 6,    7,

 // methods: parameters
    QMetaType::Void,

 // properties: name, type, flags
       3, QMetaType::QString, 0x00015103, uint(0), 0,
      12, QMetaType::QString, 0x00015103, uint(1), 0,
       7, 0x80000000 | 6, 0x0001510b, uint(2), 0,

 // enums: name, alias, flags, count, data
       6,    6, 0x0,    4,   95,

 // enum data: key, value
      13, uint(SystemController::NOSIZE),
      14, uint(SystemController::SMALL),
      15, uint(SystemController::MEDIUM),
      16, uint(SystemController::LARGE),

       0        // eod
};

void SystemController::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<SystemController *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->drinkTypeChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->drinkIconTypeChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->drinkSizeChanged((*reinterpret_cast< DrinkSize(*)>(_a[1]))); break;
        case 3: _t->setDrinkType((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->setDrinkIconType((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->setDrinkSize((*reinterpret_cast< DrinkSize(*)>(_a[1]))); break;
        case 6: _t->startOrder(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (SystemController::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&SystemController::drinkTypeChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (SystemController::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&SystemController::drinkIconTypeChanged)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (SystemController::*)(DrinkSize );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&SystemController::drinkSizeChanged)) {
                *result = 2;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<SystemController *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->drinkType(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->drinkIconType(); break;
        case 2: *reinterpret_cast< DrinkSize*>(_v) = _t->drinkSize(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<SystemController *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setDrinkType(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setDrinkIconType(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->setDrinkSize(*reinterpret_cast< DrinkSize*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject SystemController::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_SystemController.offsetsAndSize,
    qt_meta_data_SystemController,
    qt_static_metacall,
    nullptr,
qt_incomplete_metaTypeArray<qt_meta_stringdata_SystemController_t
, QtPrivate::TypeAndForceComplete<QString, std::true_type>, QtPrivate::TypeAndForceComplete<QString, std::true_type>, QtPrivate::TypeAndForceComplete<DrinkSize, std::true_type>, QtPrivate::TypeAndForceComplete<SystemController, std::true_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<QString, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<QString, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<DrinkSize, std::false_type>
, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<QString, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<QString, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<DrinkSize, std::false_type>
, QtPrivate::TypeAndForceComplete<void, std::false_type>

>,
    nullptr
} };


const QMetaObject *SystemController::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SystemController::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_SystemController.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int SystemController::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 7;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void SystemController::drinkTypeChanged(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void SystemController::drinkIconTypeChanged(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void SystemController::drinkSizeChanged(DrinkSize _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
