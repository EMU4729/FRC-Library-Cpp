################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Subsystems/CubeSubsystem.cpp \
../src/Subsystems/DriveSubsystem.cpp \
../src/Subsystems/ExampleSubsystem.cpp \
../src/Subsystems/Flaps.cpp \
../src/Subsystems/LED.cpp \
../src/Subsystems/WinchSubsystem.cpp 

OBJS += \
./src/Subsystems/CubeSubsystem.o \
./src/Subsystems/DriveSubsystem.o \
./src/Subsystems/ExampleSubsystem.o \
./src/Subsystems/Flaps.o \
./src/Subsystems/LED.o \
./src/Subsystems/WinchSubsystem.o 

CPP_DEPS += \
./src/Subsystems/CubeSubsystem.d \
./src/Subsystems/DriveSubsystem.d \
./src/Subsystems/ExampleSubsystem.d \
./src/Subsystems/Flaps.d \
./src/Subsystems/LED.d \
./src/Subsystems/WinchSubsystem.d 


# Each subdirectory must supply rules for building sources it contributes
src/Subsystems/%.o: ../src/Subsystems/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I"C:\Users\FRC-2/wpilib/cpp/current/include" -I"C:\Users\FRC-2\Documents\GitHub\FRC-Library-Cpp\src" -I"C:\Users\FRC-2/wpilib/user/cpp/include" -O0 -g3 -Wall -c -fmessage-length=0 -pthread -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


