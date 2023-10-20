
# Absolute path to XF src files
ABS_PATH = $$PWD

INCLUDEPATH += \
    $${ABS_PATH} \
    $${ABS_PATH}/include

SOURCES += \
    $${ABS_PATH}/core/customevent.cpp \
    $${ABS_PATH}/core/initialevent.cpp \
    $${ABS_PATH}/core/defaulttransition.cpp \
    $${ABS_PATH}/core/behavior.cpp \
    $${ABS_PATH}/core/timeout.cpp

HEADERS += \
    $${ABS_PATH}/include/xf/interface/timeoutmanager.h \
    $${ABS_PATH}/include/xf/interface/behavior.h \
    $${ABS_PATH}/include/xf/interface/dispatcher.h \
    $${ABS_PATH}/include/xf/interface/eventqueue.h \
    $${ABS_PATH}/include/xf/interface/mutex.h \
    $${ABS_PATH}/include/xf/customevent.h \
    $${ABS_PATH}/include/xf/event.h \
    $${ABS_PATH}/include/xf/eventstatus.h \
    $${ABS_PATH}/include/xf/initialevent.h \
    $${ABS_PATH}/include/xf/defaulttransition.h \
    $${ABS_PATH}/include/xf/behavior.h \
    $${ABS_PATH}/include/xf/timeout.h \
    $${ABS_PATH}/include/xf/xf.h
