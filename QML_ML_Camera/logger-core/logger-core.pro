#-------------------------------------------------
#
# Project created by QtCreator 2019-01-11T15:17:15
#
#-------------------------------------------------

QT       -= gui

TARGET = logger-core
TEMPLATE = lib
CONFIG += lib c++17
DEFINES += LOGGERCORE_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    logger.cpp \
    loggingcategories.cpp

HEADERS += \
        logger-core_global.h \
    logger.h \
    loggingcategories.h


