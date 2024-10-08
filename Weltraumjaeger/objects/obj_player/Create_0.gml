/// @description Insert description here
// You can write your code in this editor


playerInput = [0,0,0,0,0];
image_angle -= 90;

// Acceleration
acc = 5;
xacc = 0;
yacc = 0;

// Velocity
terminalVel = 15;
xTerminalVel = terminalVel * dcos(image_angle);
yTerminalVel = terminalVel * dsin(image_angle);
xvel = 0;
yvel = -15;

// Rotation
rotSpeed = 0.5;

// Plane forces
//drag = ;
//grav = ;