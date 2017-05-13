close all;
N=10000;

fig=figure;
subplot(3,2,1);
vraag2_func(@(x) x.^20,N,2/21 )
title('x^{20}');

% exp(1) - exp(-1)
subplot(3,2,2);
vraag3_func(@(x) exp(x),N, exp(1) - exp(-1) )
title('exp(x)');

subplot(3,2,3);
vraag3_func(@(x) exp(-x.^2),N,pi^(1/2)*erf(1) );
title('exp(-x^{2})');

subplot(3,2,4);
vraag3_func(@(x) 1./(1+16.*x.^2),N,atan(4)/2 );
title('1/(1+16x^{2})');

subplot(3,2,5);
vraag3_func(@(x) exp(-x.^-2),N,2*exp(-1) + 2*pi^(1/2)*erf(1) - 2*pi^(1/2) );
title('exp(-x^{-2}');

subplot(3,2,6);
vraag3_func(@(x) abs(x).^3,N,0.5 );
title('|x|^3');

saveas(fig,'vraag3_plot.png');
