%Bai 6
% c) Thuc hien lai bai toan 3
figure;
title('x^2-sin(x)-50');
f=@(x) x^2-sin(x)-50;
a=0; b=8; Df=3*10^-3;

[c,fc]=daycung(f,a,b,Df)