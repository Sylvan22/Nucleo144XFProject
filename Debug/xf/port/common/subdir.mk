################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../xf/port/common/dispatcher.cpp \
../xf/port/common/timeoutmanager.cpp 

OBJS += \
./xf/port/common/dispatcher.o \
./xf/port/common/timeoutmanager.o 

CPP_DEPS += \
./xf/port/common/dispatcher.d \
./xf/port/common/timeoutmanager.d 


# Each subdirectory must supply rules for building sources it contributes
xf/port/common/%.o xf/port/common/%.su xf/port/common/%.cyclo: ../xf/port/common/%.cpp xf/port/common/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/app" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/mdw" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc/mcu" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/include" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/port" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-xf-2f-port-2f-common

clean-xf-2f-port-2f-common:
	-$(RM) ./xf/port/common/dispatcher.cyclo ./xf/port/common/dispatcher.d ./xf/port/common/dispatcher.o ./xf/port/common/dispatcher.su ./xf/port/common/timeoutmanager.cyclo ./xf/port/common/timeoutmanager.d ./xf/port/common/timeoutmanager.o ./xf/port/common/timeoutmanager.su

.PHONY: clean-xf-2f-port-2f-common

