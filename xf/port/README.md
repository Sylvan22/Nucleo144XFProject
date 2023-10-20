# XF Ports

## Introduction
A XF (execution framework) consists of a view classes which some need to be adjusted
when used on another platform.

Following you will find a list of classes which may be adjusted/reimplemented when
changing to another platform/environment:
 - `XF`
 - `TimeoutManager`
 - `Dispatcher`
 - `EventQueue`
 - `Mutex`

These classes are also named `port classes` because they can be ported to another
platform. All port classes can be found in the _port_ folder whereas every port is
located in a separate folder.

Every port may pick some default implementation classes from the _common_ folder
also located in the _port_ folder.

## Common Port Classes
There are already some common port class implementations present. You can find
them in the `common` folder and may suit your needs for a first version
of your XF. These default port classes are platform independent and can be 
used by any port implementation.

> Note
> 
> Be carefull when changing the code of a class in the _common_ folder. It may
> affect other ports and cause them to no more work correctly!

## Port Folder Structure
In case you want to add support for another platform to the XF, you need to add a
subfolder to the _port_ folder and put the port class files in there. Best is, to
take an already present port which is most similar to what you need, rename it and
start adaption of these files.

You may also mix-up your port with classes from the _common_ folder and your custom
folder (or even reference classes from other ports).

## Available Ports

Here is a list of currently available ports:

| Port Name | OS | Platform | Folder Name | Description |
|--|--|--|--|--|
| PORT_IDF_QT | Qt (IDF) | Qt library based implementation | idf-qt | XF support for macOS, Linux and Windows |
| PORT_IDF_STM32 | Bare-Metal (IDF) | STM32CubeIDE/STM32CubeMX based port | idf-stm32 | XF for ARM Cortex based microcontrollers from STMicroelectronics |
