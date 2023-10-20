# XF Port - IDF Qt

This port folder contains specific classes for the _IDF Qt_ XF port.

# Classes used by the _IDF Qt_ Port

| Class name | File location | Define to set |
|--|--|--|
| `XFTimeoutManager` | xf/port/common/timeoutmanager.cpp | USE_XF_COMMON_TIMEOUTMANAGER_CLASS |
| `XFDispatcher`     | xf/port/common/dispatcher.cpp     | USE_XF_COMMON_DISPATCHER_CLASS     |
| `XF`               | xf/port/idf-qt/xf.cpp             | USE_XF_IDF_QT_XF_CLASS |
| `XFEventQueue`     | xf/port/idf-qt/eventqueue.cpp     | USE_XF_IDF_QT_EVENT_QUEUE_CLASS |
| `XFMutex`          | xf/port/idf-qt/mutex.cpp          | USE_XF_IDF_QT_MUTEX_CLASS |

# Example _config/xf-config.h_ File

```c++
    // Defines used by the IDF Qt port
    #define USE_XF_COMMON_TIMEOUTMANAGER_CLASS                  1
    #define USE_XF_COMMON_DISPATCHER_CLASS                      1
    #define USE_XF_IDF_QT_XF_CLASS                              1
    #define USE_XF_IDF_QT_EVENT_QUEUE_CLASS                     1
    #define USE_XF_IDF_QT_MUTEX_CLASS                           1

    #include "idf-qt/eventqueue.h"
```

> Note:
> 
> Here is also a good place to indicate which `EventQueue` class the XF should use.
