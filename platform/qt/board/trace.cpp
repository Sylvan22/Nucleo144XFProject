#include <config/trace-config.h>

#if (USE_PLATFORM_QT_TRACE != 0)

#include <QDebug>
#include <QTime>
#include "trace/trace.h"

#define ADD_CRLF_SEQU 	0

static QString getTimeStampString()
{
    return QTime::currentTime().toString("hh:mm:ss.zzz");
}

//static
void Trace::initialize()
{

}

void Trace::out(string str)
{
    QString output;
#ifdef TRACE_ENABLE_TIMESTAMP
    output = getTimeStampString() + ": ";
#endif // TRACE_ENABLE_TIMESTAMP
    output.append(str.c_str());

    qDebug(output.toLatin1());
}

void Trace::out(const char * format, ...)
{
    char str[255];

    va_list args;

    va_start(args, format);
    vsprintf(str, format, args);
    va_end(args);

    QString output;

#ifdef TRACE_ENABLE_TIMESTAMP
    output = getTimeStampString() + ": ";
#endif // TRACE_ENABLE_TIMESTAMP
    output.append(str);

    qDebug(output.toLatin1());
}

#endif // USE_PLATFORM_QT_TRACE
