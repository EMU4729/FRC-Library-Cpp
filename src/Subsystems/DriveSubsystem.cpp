/*----------------------------------------------------------------------------*/
/* Copyright (c) 2017-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#include "DriveSubsystem.h"
#include "../RobotMap.h"

DriveSubsystem::DriveSubsystem() : Subsystem("ExampleSubsystem") {
	leftFrontDrive = new Talon(leftFrontPort);
	rightFrontDrive = new Talon(rightFrontPort);
	leftBackDrive = new Talon(leftBackPort);
	rightBackDrive = new Talon(rightBackPort);

	speed = 1.0;

	leftEncoder = new Encoder(leftEncoderA, leftEncoderB, true);
	rightEncoder = new Encoder(rightEncoderA, rightEncoderB, true);

	circumferenceOfWheels = 0.1016;
	pulsesPerRevolution = 2048;

	leftEncoder->SetMaxPeriod(0.1);
	leftEncoder->SetMinRate(10);
	leftEncoder->SetDistancePerPulse(M_PI * circumferenceOfWheels/pulsesPerRevolution);
	leftEncoder->SetSamplesToAverage(7);

	rightEncoder->SetMaxPeriod(0.1);
	rightEncoder->SetMinRate(10);
	rightEncoder->SetDistancePerPulse(M_PI * circumferenceOfWheels/pulsesPerRevolution);
	rightEncoder->SetSamplesToAverage(7);
}

void DriveSubsystem::InitDefaultCommand() {
	// Set the default command for a subsystem here.
	// SetDefaultCommand(new MySpecialCommand());
}

void DriveSubsystem::arcade(double forwards, double turn) {
	power(forwards-turn,
		  forwards+turn);
}

void DriveSubsystem::tank(double left, double right) {
	power(left,
		  right);
}

void DriveSubsystem::power(double left, double right) {
	leftFrontDrive->SetSpeed(left*speed);
	rightFrontDrive->SetSpeed(right*speed);
	leftBackDrive->SetSpeed(left*speed);
	rightBackDrive->SetSpeed(right*speed);
}

double DriveSubsystem::getLeftEncoder() {
	return leftEncoder->GetDistance();
}

double DriveSubsystem::getRightEncoder() {
	return rightEncoder->GetDistance();
}

// Put methods for controlling this subsystem
// here. Call these from Commands.
