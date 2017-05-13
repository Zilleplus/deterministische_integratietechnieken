close all; clear;
run('functies');

N1 = [];
E1 = [];
E2 = [];
E3 = [];
E4 = [];
r1 = [];
N2 = [];
r2 = [];
N3 = [];
r3 = [];
N4 = [];
r4 = [];
aantal = 2*32;
for p =0:aantal
    N1 = [N1;nullrule(-1, 1, p, f1)];
    N2 = [N2;nullrule(-1, 1, p, f2)];
    N3 = [N3;nullrule(-1, 1, p, f3)];
    N4 = [N4;nullrule(-1, 1, p, f4)];
end
for p =1:aantal/2
    E1 = [E1; sqrt(N1(2*p-1)^2+N1(2*p)^2)];
    E2 = [E2; sqrt(N2(2*p-1)^2+N2(2*p)^2)];
    E3 = [E3; sqrt(N3(2*p-1)^2+N3(2*p)^2)];
    E4 = [E4; sqrt(N4(2*p-1)^2+N4(2*p)^2)];
    
end
for p=1:aantal/2-1
    r1 = [r1; E1(p)/E1(p+1)];
    r2 = [r2; E2(p)/E2(p+1)];
    r3 = [r3; E3(p)/E3(p+1)];
    r4 = [r4; E4(p)/E4(p+1)];
end

maxR1 = max(r1);
maxR2 = max(r2);
maxR3 = max(r3);
maxR4 = max(r4);

x = linspace(0,aantal/2-1,aantal/2-1);
plot(x,r1);
hold all
plot(x,r2);
plot(x,r3);
plot(x,r4);
hold off
