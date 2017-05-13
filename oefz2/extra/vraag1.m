clc;clear all;close all;
run('functies');
%% define the rule
number_of_points=31;
interval_lenght=2;
trap_rule = (interval_lenght/(number_of_points-1))*ones(1,number_of_points);
trap_rule(1)=0.5*trap_rule(1); 
trap_rule(end)=0.5*trap_rule(end); 

x=linspace(-1,1,number_of_points);
%% test it out on simple polynomials to get an idea
disp(['A constant integrates with error: ' ...
num2str(ones(1,length(trap_rule))*trap_rule' -2 )]);
disp(['Poly f(x)=x of degree 1 integrates with error: ' ...
num2str(x*trap_rule' - 0) ]);
% a poly of degree 2 cannot be integrated exact with this rule
disp(['Poly f(x)=x^2 of degree 2 integrates with error: ' ...
    num2str(x.^2*trap_rule'-2/3)])
 
%%
disp(['with ' num2str(number_of_points) ' points we should have an accuracy of:' ...
    num2str(number_of_points^-1)])

disp(['accuracy integrating f1: ' num2str(f1(x)*trap_rule'-int_f1)]);
disp(['accuracy integrating f2: ' num2str(f2(x)*trap_rule'-int_f2)]);
disp(['accuracy integrating f3: ' num2str(f3(x)*trap_rule'-int_f3)]);
disp(['accuracy integrating f4: ' num2str(f4(x)*trap_rule'-int_f4)]);