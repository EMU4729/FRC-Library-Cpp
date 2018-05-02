/*----------------------------------------------------------------------------*/
/* Copyright (c) 2017-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#include "OI.h"

#include <WPILib.h>
#include "Commands/TwoStickArcade.h"

OI::OI() {
	// Process operator interface input here.
	leftStick = new Joystick(0);
	rightStick = new Joystick(1);

	auto x = new JoystickButton(leftStick, 1);
	auto y = new JoystickButton(leftStick, 2);
	x->WhenPressed(new TwoStickArcade(leftStick, rightStick));
}
