function el = elevation(ENU,el_mask)
sz = size(ENU)
ENU_p = ENU(2:end,:);
for i = 1: sz(2)
    el(i) = asin(ENU_p(3,i)./sqrt(ENU_p(1,i)^2+ENU_p(2,i)^2)+ENU_p(3,i)^2);
    el(i) = rad2deg(el(1));
    if el(i) < el_mask
        el(i) = NAN;
    end

end
