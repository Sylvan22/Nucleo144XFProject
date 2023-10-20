################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../xf/port/idf-stm32/c-wrapper-functions.cpp \
../xf/port/idf-stm32/eventqueue.cpp \
../xf/port/idf-stm32/mutex.cpp \
../xf/port/idf-stm32/xf.cpp 

OBJS += \
./xf/port/idf-stm32/c-wrapper-functions.o \
./xf/port/idf-stm32/eventqueue.o \
./xf/port/idf-stm32/mutex.o \
./xf/port/idf-stm32/xf.o 

CPP_DEPS += \
./xf/port/idf-stm32/c-wrapper-functions.d \
./xf/port/idf-stm32/eventqueue.d \
./xf/port/idf-stm32/mutex.d \
./xf/port/idf-stm32/xf.d 


# Each subdirectory must supply rules for building sources it contributes
xf/port/idf-stm32/%.o xf/port/idf-stm32/%.su xf/port/idf-stm32/%.cyclo: ../xf/port/idf-stm32/%.cpp xf/port/idf-stm32/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/app" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/mdw" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc/mcu" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/include" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/port" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-xf-2f-port-2f-idf-2d-stm32

clean-xf-2f-port-2f-idf-2d-stm32:
	-$(RM) ./xf/port/idf-stm32/c-wrapper-functions.cyclo ./xf/port/idf-stm32/c-wrapper-functions.d ./xf/port/idf-stm32/c-wrapper-functions.o ./xf/port/idf-stm32/c-wrapper-functions.su ./xf/port/idf-stm32/eventqueue.cyclo ./xf/port/idf-stm32/eventqueue.d ./xf/port/idf-stm32/eventqueue.o ./xf/port/idf-stm32/eventqueue.su ./xf/port/idf-stm32/mutex.cyclo ./xf/port/idf-stm32/mutex.d ./xf/port/idf-stm32/mutex.o ./xf/port/idf-stm32/mutex.su ./xf/port/idf-stm32/xf.cyclo ./xf/port/idf-stm32/xf.d ./xf/port/idf-stm32/xf.o ./xf/port/idf-stm32/xf.su

.PHONY: clean-xf-2f-port-2f-idf-2d-stm32

