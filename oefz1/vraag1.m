close all;

fig=figure;
subplot(3,2,1);
vraag1_plot(@(x) x.^20 )
title('x^{20}');

% exp(1) - exp(-1)
subplot(3,2,2);
vraag1_plot(@(x) exp(x) )
title('exp(x)');

subplot(3,2,3);
vraag1_plot(@(x) exp(-x.^2) );
title('exp(-x^{2})');

subplot(3,2,4);
vraag1_plot(@(x) 1./(1+16.*x.^2) );
title('1/(1+16x^{2})');

subplot(3,2,5);
vraag1_plot(@(x) exp(-x.^-2) );
title('exp(-x^{-2}');

subplot(3,2,6);
vraag1_plot(@(x) abs(x).^3 );
title('|x|^3');

saveas(fig,'vraag1_plot.png');
