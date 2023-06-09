function velocityInPQW  = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity,true_anomaly)
mu = 3.986004418e+14;
nu = true_anomaly*pi/180;
p = semimajor_axis*(1-eccentricity)^2;
h_abs = sqrt(mu*p);
r_abs = p/(1+eccentricity*cos(nu));
v_abs = sqrt((2*mu/r_abs)-(mu/semimajor_axis));
theta = asin(h_abs/(r_abs*v_abs));
v_x = v_abs*cos(nu+theta);
v_y = v_abs*sin(nu+theta);
velocityInPQW = [v_x, v_y, 0];