clc; clear;
f = @(x) (x.^2)-1;
xl = 0;
xu = 2;
ea = 0.0001;
es = 1;
xr = 0;
i = 0;
while ea > es
    xo = xr;
    xr = xu-((f(xu)*(xl-xu))/(f(xl)-f(xu)));
    if f(xr)*f(xl) == 0
        break
    elseif f(xr)*f(xu) == 0
        break
    elseif f(xr)*f(xl) > 0
        xl = xr;
    elseif f(xr)*f(xl) < 0
        xu = xr;
    end
    ea = abs(xr-xo)/xr * 100;
    iter = iter+1;
end
disp(xr)