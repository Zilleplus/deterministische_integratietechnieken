close all; clear;

f1 = @(x) x^20;  %exact 2/21
f2 = @(x) exp(x); %exact exp(1)-exp(-1)
f3 = @(x) exp(-x^2); % exact sqrt(PI)*erf(1)
f4 = @(x) 1/(1+16*x^2); %exact arctan(4)/2

sol1 = CompountTrapezoid(-1,1,31,f1);
sol2 = CompountTrapezoid(-1,1,31,f2);
sol3 = CompountTrapezoid(-1,1,31,f3);
sol4 = CompountTrapezoid(-1,1,31,f4);

error1 = abs((2/21)-sol1);
error2 = abs((exp(1)-exp(-1))-sol2);
error3 = abs(sqrt(pi)*erf(1)-sol3);
error4 = abs(atan(4)/2-sol4);