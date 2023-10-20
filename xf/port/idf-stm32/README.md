# XF Port - IDF STM32

This port folder contains specific classes for the _IDF STM32_ XF port.

# Classes used by the _IDF STM32_ Port

| Class name | File location | Define to set |
|--|--|--|
| `XFTimeoutManager` | xf/port/common/timeoutmanager.cpp | USE_XF_COMMON_TIMEOUTMANAGER_CLASS |
| `XFDispatcher`     | xf/port/common/dispatcher.cpp     | USE_XF_COMMON_DISPATCHER_CLASS     |
| `XF`               | xf/port/idf-stm32/xf.cpp          | USE_XF_IDF_STM32_XF_CLASS |
| `XFEventQueue`     | xf/port/idf-stm32/eventqueue.cpp  | USE_XF_IDF_STM32_EVENT_QUEUE_CLASS |
| `XFMutex`          | xf/port/idf-stm32/mutex.cpp       | USE_XF_IDF_STM32_MUTEX_CLASS |

# Example _config/xf-config.h_ File

```c++
    // Defines used by the IDF STM32 port
    #define USE_XF_COMMON_TIMEOUTMANAGER_CLASS                  1
    #define USE_XF_COMMON_DISPATCHER_CLASS                      1
    #define USE_XF_IDF_STM32_XF_CLASS                           1
    #define USE_XF_IDF_STM32_EVENT_QUEUE_CLASS                  1
    #define USE_XF_IDF_STM32_MUTEX_CLASS                        1

    #include "idf-stm32/eventqueue.h"
```

> Note:
> 
> Here is also a good place to indicate which `EventQueue` class the XF should use.
