close all; clear;
run('functies');
number_of_points=31;

N1 = zeros(30,1);
N2 = N1;N3 = N1;N4 = N1;
for degree_nullRulle = 1:30
    N1(degree_nullRulle) = nullrule(-1, 1, number_of_points, f1,degree_nullRulle);
    N2(degree_nullRulle) = nullrule(-1, 1, number_of_points, f2,degree_nullRulle);
    N3(degree_nullRulle) = nullrule(-1, 1, number_of_points, f3,degree_nullRulle);
    N4(degree_nullRulle) = nullrule(-1, 1, number_of_points, f4,degree_nullRulle);
end
%x = linspace(0,33,33);
figure;
degrees = 1:30;
subplot(2,1,1);
plot(degrees,N1);hold all;
plot(degrees,N2);
legend('f1','f2');
subplot(2,1,2);
plot(degrees,N3);hold all;
plot(degrees,N4);
legend('f3','f4');
hold off
