function az = Az(ENU)
ENU = [1 2 3;2 3 2;1 4 6;1 2 4];
sz = size(ENU);
ENU_p = ENU(2:end,:);
for i = 1 : sz(2)
    az(i) = acos(ENU_p(2,i)./sqrt(ENU_p(1,i).^2+ENU_p(2,i).^2));
    az(i) = rad2deg(az(i));
end
