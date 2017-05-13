function [ N ] = nullrule( a, b, l, fun )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

h = (b-a)/l;
for i = 1:l+1
    x(i) = a + (i-1)*h;
end
x = linspace(a,b,2+l);

n = l+2;

% Vandemonde matrix
 V = fliplr(vander( x ))'; % x = nodes of quadrature rule
 
 % Null-rules
 us = zeros(numel(x),numel(x)-1);
 for m = 1:n-1
 u = sum(null( V(1:end-m,:) ),2);
 
 % Orthogonalise to previous rules
 for i=1:m-1
 u = u - dot(u,us(:,i))*us(:,i);
 end
 
 % Make equaly strong
 u = u ./norm(u);
 us(:,m) = u;
 end
 
N = 0;
for i = 1:l+1
    N = N + u(i)*fun(x(i));
end
end



