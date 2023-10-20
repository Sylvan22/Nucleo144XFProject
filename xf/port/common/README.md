# XF Common Port

This folder provides common implementations for some platform
indipendent XF classes. 
You can use these classes to construct the XF needed.

If these classes do not suit your needs, they can be reimplemented for
your platform. Create an additional folder in the 'port' folder and
implement there the classes you need for your platform.

# Available Common Port Classes

| Class name | File location | Define to set |
|--|--|--|
| `XFTimeoutManager` | xf/port/common/timeoutmanager.cpp | USE_XF_COMMON_TIMEOUTMANAGER_CLASS |
| `XFDispatcher`     | xf/port/common/dispatcher.cpp     | USE_XF_COMMON_DISPATCHER_CLASS     |

If you need more information about the classes mentioned above, please
have a look into their header files and the doxygen comments in code.

# Platform Dependend Common Port Classes
In the following folders you can pick some platform dependend
port classes:

| Platform | Folder |
|--|--|
| IDF-QT | [idf-qt](../idf-qt) |
| IDF-STM32 | [idf-stm32](../idf-stm32) |

# Example _config/xf-config.h_ File
Following you will find some examples giving you a basic idea which define
to set in the application specific _config/xf-config.h_ file.

The _IDF Stm32_ port uses the following defines:

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

If you want to build an XF on Windows, macOS or Linux, use the _IDF Qt_ port.
Following defines need to be set in the application specific
_config/xf-config.h_ file:
```c++
    // Defines used by the IDF Qt port
    #define USE_XF_COMMON_TIMEOUTMANAGER_CLASS                  1
    #define USE_XF_COMMON_DISPATCHER_CLASS                      1
    #define USE_XF_IDF_QT_XF_CLASS                              1
    #define USE_XF_IDF_QT_EVENT_QUEUE_CLASS                     1
    #define USE_XF_IDF_QT_MUTEX_CLASS                           1

    #include "idf-qt/eventqueue.h"
```
