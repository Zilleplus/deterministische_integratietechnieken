close all; clear;
run('functies');
number_of_points=31;
degreeNullRule=30;

N1 = nullrule(-1, 1, number_of_points, f1,degreeNullRule);
N2 = nullrule(-1, 1, number_of_points, f2,degreeNullRule);
N3 = nullrule(-1, 1, number_of_points, f3,degreeNullRule);
N4 = nullrule(-1, 1, number_of_points, f4,degreeNullRule);

disp(num2str(N1));
disp(num2str(N2));
disp(num2str(N3));
disp(num2str(N4));