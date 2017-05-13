close all; clear;
run('functies');
number_of_points=31;
%%
% Leave out the odd ones as these are symetric rules...

N1 = zeros(15,1);
N2 = N1;N3 = N1;N4 = N1;
for i = 1:15
    e_f1(i) = nullrule(-1, 1, number_of_points, f1,i*2-1);
    e_f2(i) = nullrule(-1, 1, number_of_points, f2,i*2-1);
    e_f3(i) = nullrule(-1, 1, number_of_points, f3,i*2-1);
    e_f4(i) = nullrule(-1, 1, number_of_points, f4,i*2-1);
end

% using the definition from the paper, is this an typo on the assignment?
for i = 2:15
    ri_f1(i-1) = e_f1(i)/e_f1(i-1);
    ri_f2(i-1) = e_f2(i)/e_f2(i-1);
    ri_f3(i-1) = e_f3(i)/e_f3(i-1);
    ri_f4(i-1) = e_f4(i)/e_f4(i-1);
end

r_f1=max(ri_f1);
r_f2=max(ri_f2);
r_f3=max(ri_f3);
r_f4=max(ri_f4);

figure;
x=1:length(ri_f1);
plot(x,ri_f1);hold all;
plot(x,ri_f2);
plot(x,ri_f3);
plot(x,ri_f4);hold off;
legend('f1','f2','f3','f4');