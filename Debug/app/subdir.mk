################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../app/statemachine01.cpp \
../app/testfactory01.cpp 

OBJS += \
./app/statemachine01.o \
./app/testfactory01.o 

CPP_DEPS += \
./app/statemachine01.d \
./app/testfactory01.d 


# Each subdirectory must supply rules for building sources it contributes
app/%.o app/%.su app/%.cyclo: ../app/%.cpp app/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/app" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/mdw" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc/mcu" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/include" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/port" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-app

clean-app:
	-$(RM) ./app/statemachine01.cyclo ./app/statemachine01.d ./app/statemachine01.o ./app/statemachine01.su ./app/testfactory01.cyclo ./app/testfactory01.d ./app/testfactory01.o ./app/testfactory01.su

.PHONY: clean-app

