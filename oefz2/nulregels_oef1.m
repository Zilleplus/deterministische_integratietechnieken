close all; clear;
run('functies');
number_of_points=31;

sol1 = CompountTrapezoid(-1,1,number_of_points,f1);
sol2 = CompountTrapezoid(-1,1,number_of_points,f2);
sol3 = CompountTrapezoid(-1,1,number_of_points,f3);
sol4 = CompountTrapezoid(-1,1,number_of_points,f4);

error1 = abs(int_f1-sol1);
error2 = abs(int_f2-sol2);
error3 = abs(int_f3-sol3);
error4 = abs(int_f4-sol4);

disp(['with ' num2str(number_of_points) ...
    ' points there should at least be an accuracy of: ' ...
    num2str(number_of_points^-1)])
disp(['accuracy integrating f1: ' num2str(error1)]);
disp(['accuracy integrating f2: ' num2str(error2)]);
disp(['accuracy integrating f3: ' num2str(error3)]);
disp(['accuracy integrating f4: ' num2str(error4)]);