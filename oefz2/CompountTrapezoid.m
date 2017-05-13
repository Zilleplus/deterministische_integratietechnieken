function [ T ] = CompountTrapezoid( a,b,l,fun )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
h = (b-a)/l;
T = (h/2)*(fun(a)+fun(b));
temp = 0;
for k=1:l-1
   x(k) = a+(k)*h;
   temp = temp + (fun(x(k)));
end
T = T + h*temp;
end

