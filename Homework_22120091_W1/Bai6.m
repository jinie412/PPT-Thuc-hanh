%Bai 6
%b) Lam lai bai 2:

disp('Lam lai bai 2:')

f=@(x) x+sin(x)-2;
figure;
title('f=x+sin(x)-2');
phi=@(x) 2-sin(x);
x0=1.05;
Df=10^-3;

[c,fc]=pplap(f,phi,x0,Df)
disp('---------------------------------------')

%c) Lam lai bai 3: bi lap vo tan
%disp('Lam lai bai 3:')

%f1=@(x) x^2 + x -5;
% figure;
%title('x^2 + x -5');
%phi1=@(x) 5 - x^2;
%x0=1.5;
%Df=10^-3;

%[c1,fc1]=pplap(f1,phi1,x0,Df)