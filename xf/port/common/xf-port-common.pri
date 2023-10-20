#
# This PRI file takes the classes needed from the 'common' port.
#

INCLUDEPATH += $$PWD/..

# Path to common port class implementation
XF_PORT_COMMON_PATH = $$PWD/../common

SOURCES += \
    "$${XF_PORT_COMMON_PATH}/timeoutmanager.cpp" \
    "$${XF_PORT_COMMON_PATH}/dispatcher.cpp"

HEADERS += \
    "$${XF_PORT_COMMON_PATH}/timeoutmanager.h" \
    "$${XF_PORT_COMMON_PATH}/dispatcher.h"
