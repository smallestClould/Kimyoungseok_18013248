function [rotation_matrix] = PQW2ECI (arg_prg, inc_angle, RAAN)

% degree to radian
arg_prg = arg_prg*(pi/180);
inc_angle = inc_angle*(pi/180);
RAAN = RAAN*(pi/180);

% 1st z-axis rotation
R_1 = [cos(RAAN) sin(RAAN) 0; -sin(RAAN) cos(RAAN) 0; 0 0 1];

% x-axis rotation
R_2 = [1 0 0; 0 cos(inc_angle) sin(inc_angle);0 -sin(inc_angle) cos(inc_angle)];

% 2nd z-axis rotation
R_3 = [cos(arg_prg) sin(arg_prg) 0; -sin(arg_prg) cos(arg_prg) 0; 0 0 1];

%perifocal -> ECI Frame
rotation_matrix = [R_1*R_2*R_3]';