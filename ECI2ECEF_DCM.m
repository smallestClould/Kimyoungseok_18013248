function DCM = ECI2ECEF_DCM(time)
   dt = datetime(time);
   jd = juliandate(dt);
   theta_g = siderealTime(jd);
   DCM = [cos(theta_g) sin(theta_g) 0; -sin(theta_g) cos(theta_g) 0; ...
        0 0 1];
end
