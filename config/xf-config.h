#ifndef XF_CONFIG_H
#define XF_CONFIG_H

#include "config/xf-port-config.h"

#if (PORT_IDF_QT != 0)
    // Defines to set to use the IDF Qt port
    #define USE_XF_COMMON_TIMEOUTMANAGER_CLASS                  1
    #define USE_XF_COMMON_DISPATCHER_CLASS                      1
    #define USE_XF_IDF_QT_XF_CLASS                              1
    #define USE_XF_IDF_QT_EVENT_QUEUE_CLASS                     1
    #define USE_XF_IDF_QT_MUTEX_CLASS                           1

    #include "idf-qt/eventqueue.h"
#endif // PORT_IDF_QT

#if (PORT_IDF_STM32 != 0)
    // Defines to set to use the IDF STM32 port
    #define USE_XF_COMMON_TIMEOUTMANAGER_CLASS                  1
    #define USE_XF_COMMON_DISPATCHER_CLASS                      1
    #define USE_XF_IDF_STM32_XF_CLASS                           1
    #define USE_XF_IDF_STM32_EVENT_QUEUE_CLASS                  1
    #define USE_XF_IDF_STM32_MUTEX_CLASS                        1

    #include "idf-stm32/eventqueue.h"
#endif // PORT_IDF_STM32

#if (PORT_ACTIVE_QT != 0)

    // Take the resource factory. Must provide active dispatchers!
    #define USE_XF_PORT_ACTIVE_QT_RESOURCE_FACTORY_IMPLEMENTATION   1

    // Add classes from 'default-qt' port package
    #define USE_XF_CLASS_DEFAULT_QT_IMPLEMENTATION                  1
    #define USE_XF_PORT_FUNCTIONS_DEFAULT_QT_IMPLEMENTATION         1
    #define USE_XF_EVENT_QUEUE_DEFAULT_QT_IMPLEMENTATION            1
    #define USE_XF_MUTEX_DEFAULT_QT_IMPLEMENTATION                  1
    #define USE_XF_THREAD_DEFAULT_QT_IMPLEMENTATION                 1

    // ... and the remaining classes from the default port package.
    #define USE_XF_DEFAULT_IMPLEMENTATION                           0
    #define USE_XF_RESOURCE_FACTORY_DEFAULT_IMPLEMENTATION          0
    #define USE_XF_TIMEOUTMANAGER_DEFAULT_IMPLEMENTATION            1
    #define USE_XF_DISPATCHER_DEFAULT_IMPLEMENTATION                0
    #define USE_XF_DISPATCHER_ACTIVE_DEFAULT_IMPLEMENTATION         1

    #include "default-qt/eventqueue-default.h"
#ifdef __cplusplus
    // Force to take the XFEventQueueDefault implementation for the event queue
    using XFEventQueue = XFEventQueueDefault;
#endif // __cplusplus
#endif // PORT_ACTIVE_QT

#endif // XF_CONFIG_H
