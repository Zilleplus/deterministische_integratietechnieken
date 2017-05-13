% define all the functions
f1 = @(x) x.^20;
int_f1=2/21;
f2 = @(x) exp(x);
int_f2=exp(1) - exp(1)^-1;
f3 = @(x) exp(-x.^2);
int_f3=sqrt(pi)*erf(1);
f4 = @(x) 1./(1+16.*x.^2);
int_f4=0.5*atan(4);