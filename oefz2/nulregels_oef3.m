close all; clear;
run('functies');

N1 = [];
N2 = [];
N3 = [];
N4 = [];
for p =0:32
    N1 = [N1;nullrule(-1, 1, p, f1)];
    N2 = [N2;nullrule(-1, 1, p, f2)];
    N3 = [N3;nullrule(-1, 1, p, f3)];
    N4 = [N4;nullrule(-1, 1, p, f4)];
end
x = linspace(0,33,33);
plot(x,N1);
hold all
plot(x,N2);
plot(x,N3);
plot(x,N4);
hold off
