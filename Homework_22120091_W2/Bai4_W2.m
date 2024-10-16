% Bai 4
% c) Giai lai bai tap 1
disp('c) Giai lai bai tap 1:');
syms x;
f=x^2-sin(x)-50;
df=diff(f,x);
x0=2;
Df=10^-3;
figure;
title('x^2-sinx-50');
[c,fc]=tieptuyen(f,df,x0,Df)
disp('---------------------------------------')
% d) Giai lai bai tap 2
disp('d) Giai lai bai tap 2:');

syms x;
f=x^3-6*x^2+2*x+25;
df=diff(f,x);
x0=4;
Df=10^-3;
figure;
title('x^3-6x^2+2x+25');
[c,fc]=tieptuyen(f,df,x0,Df)





