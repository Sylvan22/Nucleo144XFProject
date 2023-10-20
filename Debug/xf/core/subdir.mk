################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../xf/core/behavior.cpp \
../xf/core/customevent.cpp \
../xf/core/defaulttransition.cpp \
../xf/core/initialevent.cpp \
../xf/core/timeout.cpp 

OBJS += \
./xf/core/behavior.o \
./xf/core/customevent.o \
./xf/core/defaulttransition.o \
./xf/core/initialevent.o \
./xf/core/timeout.o 

CPP_DEPS += \
./xf/core/behavior.d \
./xf/core/customevent.d \
./xf/core/defaulttransition.d \
./xf/core/initialevent.d \
./xf/core/timeout.d 


# Each subdirectory must supply rules for building sources it contributes
xf/core/%.o xf/core/%.su xf/core/%.cyclo: ../xf/core/%.cpp xf/core/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/app" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/mdw" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc/mcu" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/include" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/port" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-xf-2f-core

clean-xf-2f-core:
	-$(RM) ./xf/core/behavior.cyclo ./xf/core/behavior.d ./xf/core/behavior.o ./xf/core/behavior.su ./xf/core/customevent.cyclo ./xf/core/customevent.d ./xf/core/customevent.o ./xf/core/customevent.su ./xf/core/defaulttransition.cyclo ./xf/core/defaulttransition.d ./xf/core/defaulttransition.o ./xf/core/defaulttransition.su ./xf/core/initialevent.cyclo ./xf/core/initialevent.d ./xf/core/initialevent.o ./xf/core/initialevent.su ./xf/core/timeout.cyclo ./xf/core/timeout.d ./xf/core/timeout.o ./xf/core/timeout.su

.PHONY: clean-xf-2f-core

