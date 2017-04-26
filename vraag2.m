
format long

f1 = @(x) x.^20; %2/21
f2 = @(x) exp(x); %exp-1/exp
f3 = @(x) exp(-x.^2); %sqrt(pi)*erf(1)
f4 = @(x) 1./(1+16.*x.^2); %1/2arctan(4)
f5 = @(x) exp(-x.^(-2)); %2/exp-2*sqrt(pi)*erfc(1)
f6 = @(x) abs(x).^3; %1/2

f = {f1 f2 f3 f4 f5 f6};
analytical_integral_value = [2/21 exp(1)-1/exp(1) sqrt(pi)*erf(1) ...
    1/2*atan(4) 2/exp(1)-2*sqrt(pi)*erfc(1) 1/2];

errorGauss = [];
errorClenshawCurtis = [];
iterG = zeros(6,1);
iterCC = zeros(6,1);
figure
for index_function = 1:6
    for numberOfSamples = 1:30
        errorGauss(index_function,numberOfSamples) = ...
            abs(vraag2_gauss(f{index_function},numberOfSamples)...
            - analytical_integral_value(index_function))/abs(analytical_integral_value(index_function));
        errorClenshawCurtis(index_function,numberOfSamples) = ...
            abs(vraag2_clenshaw_curtis(f{index_function},numberOfSamples) - ...
            analytical_integral_value(index_function))/abs(analytical_integral_value(index_function));
        if (-log10(errorGauss(index_function,numberOfSamples)) >= 7 && iterG(index_function)==0)
            iterG(index_function) = numberOfSamples;
        end
        if (-log10(errorClenshawCurtis(index_function,numberOfSamples)) >= 7 && iterCC(index_function)==0)
            iterCC(index_function) = numberOfSamples;
        end
    end
    subplot(3,2,index_function)
    semilogy(errorGauss(index_function,:))
    hold on
    semilogy(errorClenshawCurtis(index_function,:),'r')
end



