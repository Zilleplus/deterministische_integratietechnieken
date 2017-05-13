close all; clear;
run('functies');
number_of_points=31;
%%
N1 = zeros(30,1);
N2 = N1;N3 = N1;N4 = N1;
for i = 1:30
    N1(i) = nullrule(-1, 1, number_of_points, f1,i);
    N2(i) = nullrule(-1, 1, number_of_points, f2,i);
    N3(i) = nullrule(-1, 1, number_of_points, f3,i);
    N4(i) = nullrule(-1, 1, number_of_points, f4,i);
end

% This is a symtric null rule, even orders will result in zero offcourse
fig=figure;
degrees = 1:30;
subplot(2,1,1);
semilogy(degrees,abs(N1));hold all;
semilogy(degrees,abs(N2));
legend('f1','f2');
subplot(2,1,2);
semilogy(degrees,abs(N3));hold all;
semilogy(degrees,abs(N4));
legend('f3','f4');
hold off
%%
N1 = zeros(15,1);
N2 = N1;N3 = N1;N4 = N1;
for i = 1:15
    N1(i) = nullrule(-1, 1, number_of_points, f1,i*2-1);
    N2(i) = nullrule(-1, 1, number_of_points, f2,i*2-1);
    N3(i) = nullrule(-1, 1, number_of_points, f3,i*2-1);
    N4(i) = nullrule(-1, 1, number_of_points, f4,i*2-1);
end

% This is a symtric null rule
fig=figure;
degrees = (1:15)*2-1;
subplot(2,1,1);
semilogy(degrees,abs(N1));hold all;
semilogy(degrees,abs(N2));
legend('f1','f2');
subplot(2,1,2);
semilogy(degrees,abs(N3));hold all;
semilogy(degrees,abs(N4));
legend('f3','f4');
hold off
