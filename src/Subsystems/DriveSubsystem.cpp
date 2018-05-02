/*----------------------------------------------------------------------------*/
/* Copyright (c) 2017-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#include "DriveSubsystem.h"
#include "../RobotMap.h"

DriveSubsystem::DriveSubsystem() : Subsystem("ExampleSubsystem") {
	leftMotor = new Talon(1);
	rightMotor = new Talon(2);
	speed = 1.0;
}

void DriveSubsystem::InitDefaultCommand() {
	// Set the default command for a subsystem here.
	// SetDefaultCommand(new MySpecialCommand());
}

void DriveSubsystem::arcade(double forwards, double turn) {
	leftMotor->SetSpeed((forwards - turn)*speed);
	rightMotor->SetSpeed((forwards + turn)*speed);
}

void DriveSubsystem::tank(double left, double right) {
	leftMotor->SetSpeed(left*speed);
	rightMotor->SetSpeed(right*speed);
}
// Put methods for controlling this subsystem
// here. Call these from Commands.
