close all; clear;

f1 = @(x) x^20;  %exact 2/21
f2 = @(x) exp(x); %exact exp(1)-exp(-1)
f3 = @(x) exp(-x^2); % exact sqrt(PI)*erf(1)
f4 = @(x) 1/(1+16*x^2); %exact arctan(4)/2

N1 = [];
r1 = [];
N2 = [];
r2 = [];
N3 = [];
r3 = [];
N4 = [];
r4 = [];
aantal = 32;
for p =0:aantal
    N1 = [N1;nullrule(-1, 1, p, f1)];
    N2 = [N2;nullrule(-1, 1, p, f2)];
    N3 = [N3;nullrule(-1, 1, p, f3)];
    N4 = [N4;nullrule(-1, 1, p, f4)];
end
for p=1:aantal
    r1 = [r1; N1(p)/N1(p+1)];
    r2 = [r2; N2(p)/N2(p+1)];
    r3 = [r3; N3(p)/N3(p+1)];
    r4 = [r4; N4(p)/N4(p+1)];
end

maxR1 = max(r1);
maxR2 = max(r2);
maxR3 = max(r3);
maxR4 = max(r4);

x = linspace(0,aantal,aantal);
plot(x,r1);
hold all
plot(x,r2);
plot(x,r3);
plot(x,r4);
hold off