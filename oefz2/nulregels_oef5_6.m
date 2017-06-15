close all; clear;
run('functies');
number_of_points=31;
%%
M=15; %15
N1 = zeros(15,1);
N2 = N1;N3 = N1;N4 = N1;
for i = 1:M
    e_f1(i) = nullrule(-1, 1, number_of_points, f1,i*2);
    e_f2(i) = nullrule(-1, 1, number_of_points, f2,i*2);
    e_f3(i) = nullrule(-1, 1, number_of_points, f3,i*2);
    e_f4(i) = nullrule(-1, 1, number_of_points, f4,i*2);
end

for i = 2:M
    E_f1(i-1) = sqrt(e_f1(i)^2+e_f1(i-1)^2);
    E_f2(i-1) = sqrt(e_f2(i)^2+e_f2(i-1)^2);
    E_f3(i-1) = sqrt(e_f3(i)^2+e_f3(i-1)^2);
    E_f4(i-1) = sqrt(e_f4(i)^2+e_f4(i-1)^2);
end

% using the definition from the paper, is this an typo on the assignment?
for i = 2:M-1
    Ri_f1(i-1) = E_f1(i)/E_f1(i-1);
    Ri_f2(i-1) = E_f2(i)/E_f2(i-1);
    Ri_f3(i-1) = E_f3(i)/E_f3(i-1);
    Ri_f4(i-1) = E_f4(i)/E_f4(i-1);
end

R_f1=max(Ri_f1);
R_f2=max(Ri_f2);
R_f3=max(Ri_f3);
R_f4=max(Ri_f4);

disp(['f1: R=' num2str(R_f1)])
disp(['f2: R=' num2str(R_f2)])
disp(['f3: R=' num2str(R_f3)])
disp(['f4: R=' num2str(R_f4)])

fig=figure;
plot(Ri_f1);hold all;
plot(Ri_f2);
plot(Ri_f3);
plot(Ri_f4);hold off;
legend('f1','f2','f3','f4');
saveas(fig,'./img/vraag6_R.png');
