
format long

f1 = @(x) x.^20; %2/21
f2 = @(x) exp(x); %exp-1/exp
f3 = @(x) exp(-x.^2); %sqrt(pi)*erf(1)
f4 = @(x) 1./(1+16.*x.^2); %1/2arctan(4)
f5 = @(x) exp(-x.^(-2)); %2/exp-2*sqrt(pi)*erfc(1)
f6 = @(x) abs(x).^3; %1/2

f = {f1 f2 f3 f4 f5 f6};
eval = [2/21 exp(1)-1/exp(1) sqrt(pi)*erf(1) 1/2*atan(4) 2/exp(1)-2*sqrt(pi)*erfc(1) 1/2];

errorG = [];
errorCC = [];
iterG = zeros(6,1);
iterCC = zeros(6,1);
figure
for i = 1:6
    for n = 1:30
        errorG(i,n) = abs(gauss(f{i},n) - eval(i))/abs(eval(i));
        errorCC(i,n) = abs(clenshaw_curtis(f{i},n) - eval(i))/abs(eval(i));
        if (-log10(errorG(i,n)) >= 7 && iterG(i)==0)
            iterG(i) = n;
        end
        if (-log10(errorCC(i,n)) >= 7 && iterCC(i)==0)
            iterCC(i) = n;
        end
    end
    subplot(3,2,i)
    semilogy(errorG(i,:))
    hold on
    semilogy(errorCC(i,:),'r')
end



