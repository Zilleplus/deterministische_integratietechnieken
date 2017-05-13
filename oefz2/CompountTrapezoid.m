function [ T ] = CompountTrapezoid( a,b,number_of_points,fun )
interval_lenght=b-a;
trap_rule = (interval_lenght/(number_of_points-1))*ones(1,number_of_points);
trap_rule(1)=0.5*trap_rule(1); 
trap_rule(end)=0.5*trap_rule(end); 
x=linspace(-1,1,number_of_points);
T=fun(x)*trap_rule';

% h = (b-a)/l;
% T = (h/2)*(fun(a)+fun(b));
% temp = 0;
% for k=1:l-1
%    x(k) = a+(k)*h;
%    temp = temp + (fun(x(k)));
% end
% T = T + h*temp;
end

