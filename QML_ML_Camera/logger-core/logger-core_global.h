#ifndef LOGGERCORE_GLOBAL_H
#define LOGGERCORE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(LOGGERCORE_LIBRARY)
#  define LOGGERCORESHARED_EXPORT Q_DECL_EXPORT
#else
#  define LOGGERCORESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // LOGGERCORE_GLOBAL_H
