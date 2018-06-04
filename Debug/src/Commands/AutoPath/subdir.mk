################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Commands/AutoPath/Left.cpp 

OBJS += \
./src/Commands/AutoPath/Left.o 

CPP_DEPS += \
./src/Commands/AutoPath/Left.d 


# Each subdirectory must supply rules for building sources it contributes
src/Commands/AutoPath/%.o: ../src/Commands/AutoPath/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I"C:\Users\FRC-3/wpilib/cpp/current/include" -I"C:\Users\FRC-3\eclipse-workspace\FRCpp\src" -I"C:\Users\FRC-3/wpilib/user/cpp/include" -O0 -g3 -Wall -c -fmessage-length=0 -pthread -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


