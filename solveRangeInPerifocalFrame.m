function [rangeInPQW] = solveRangeInPerifocalFrame(semimajor_axis, eccentricity,true_anomaly)
mu =  3.986004418e+14;
p = semimajor_axis*(1-eccentricity)^2;
nu = true_anomaly*pi/180;
r = p/(1+eccentricity*cos(nu));
r_x = semimajor_axis*eccentricity+r*cos(nu);
r_y = r*sin(nu);

rangeInPQW = [r_x, r_y,0];