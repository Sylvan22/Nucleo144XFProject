################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../platform/f7-disco-gcc/board/ledcontroller.cpp \
../platform/f7-disco-gcc/board/trace.cpp 

OBJS += \
./platform/f7-disco-gcc/board/ledcontroller.o \
./platform/f7-disco-gcc/board/trace.o 

CPP_DEPS += \
./platform/f7-disco-gcc/board/ledcontroller.d \
./platform/f7-disco-gcc/board/trace.d 


# Each subdirectory must supply rules for building sources it contributes
platform/f7-disco-gcc/board/%.o platform/f7-disco-gcc/board/%.su platform/f7-disco-gcc/board/%.cyclo: ../platform/f7-disco-gcc/board/%.cpp platform/f7-disco-gcc/board/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/mdw" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/platform/f7-disco-gcc/mcu" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/include" -I"C:/Users/sylva/STM32CubeIDE/workspace_1.13.2/testXF/xf/port" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-platform-2f-f7-2d-disco-2d-gcc-2f-board

clean-platform-2f-f7-2d-disco-2d-gcc-2f-board:
	-$(RM) ./platform/f7-disco-gcc/board/ledcontroller.cyclo ./platform/f7-disco-gcc/board/ledcontroller.d ./platform/f7-disco-gcc/board/ledcontroller.o ./platform/f7-disco-gcc/board/ledcontroller.su ./platform/f7-disco-gcc/board/trace.cyclo ./platform/f7-disco-gcc/board/trace.d ./platform/f7-disco-gcc/board/trace.o ./platform/f7-disco-gcc/board/trace.su

.PHONY: clean-platform-2f-f7-2d-disco-2d-gcc-2f-board

