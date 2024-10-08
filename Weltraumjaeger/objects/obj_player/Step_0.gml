/// @description Insert description here
// You can write your code in this editor


player_input = scr_player_input();

xacc = player_input[0] * acc * dcos(image_angle);
yacc = player_input[0] * acc * dsin(image_angle);

//xvel -= sign(xvel);
yvel -= sign(yvel);

xTerminalVel = abs(terminalVel);// * dcos(image_angle));
yTerminalVel = abs(terminalVel);// * dsin(image_angle));

xvel = clamp(xvel-xacc, -xTerminalVel, xTerminalVel);
yvel = clamp(yvel+yacc, -yTerminalVel, yTerminalVel);

x += xvel;
y += yvel;

/*xvel = player_input[0] * 5 * dcos(image_angle);
yvel = player_input[0] * 5 * dsin(image_angle);

x -= xvel;
y +=  yvel;*/

image_angle += player_input[1];

yacc += 1.5;