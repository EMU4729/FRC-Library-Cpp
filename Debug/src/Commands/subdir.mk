################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Commands/Auto.cpp \
../src/Commands/CubeIntake.cpp \
../src/Commands/CubeOuttake.cpp \
../src/Commands/ExampleCommand.cpp \
../src/Commands/HighSpeed.cpp \
../src/Commands/LowSpeed.cpp \
../src/Commands/OneStickTank.cpp \
../src/Commands/OpenFlaps.cpp \
../src/Commands/TwoStickArcade.cpp \
../src/Commands/TwoStickTank.cpp \
../src/Commands/WinchDown.cpp \
../src/Commands/WinchUp.cpp 

OBJS += \
./src/Commands/Auto.o \
./src/Commands/CubeIntake.o \
./src/Commands/CubeOuttake.o \
./src/Commands/ExampleCommand.o \
./src/Commands/HighSpeed.o \
./src/Commands/LowSpeed.o \
./src/Commands/OneStickTank.o \
./src/Commands/OpenFlaps.o \
./src/Commands/TwoStickArcade.o \
./src/Commands/TwoStickTank.o \
./src/Commands/WinchDown.o \
./src/Commands/WinchUp.o 

CPP_DEPS += \
./src/Commands/Auto.d \
./src/Commands/CubeIntake.d \
./src/Commands/CubeOuttake.d \
./src/Commands/ExampleCommand.d \
./src/Commands/HighSpeed.d \
./src/Commands/LowSpeed.d \
./src/Commands/OneStickTank.d \
./src/Commands/OpenFlaps.d \
./src/Commands/TwoStickArcade.d \
./src/Commands/TwoStickTank.d \
./src/Commands/WinchDown.d \
./src/Commands/WinchUp.d 


# Each subdirectory must supply rules for building sources it contributes
src/Commands/%.o: ../src/Commands/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -I"C:\Users\FRC-3/wpilib/cpp/current/include" -I"C:\Users\FRC-3\eclipse-workspace\FRCpp\src" -I"C:\Users\FRC-3/wpilib/user/cpp/include" -O0 -g3 -Wall -c -fmessage-length=0 -pthread -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


