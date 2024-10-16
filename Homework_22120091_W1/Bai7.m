%Bai 7
clc;
f=@(x) x - x/2 - 1/x;
phi= @(x) x/2 + 1/x;

disp('a) x0=1, Df=10^-3')
figure;
title('a) x0=1, Df=10^-3');
x0=1; Df=10^-3;
[c,fc]=pplap(f,phi,x0,Df)
disp('---------------------------------------')

disp('b) x0=2, Df=3*10^-3')
figure;
title('b) x0=2, Df=3*10^-3');
x0=2; Df=3*10^-3;
[c,fc]=pplap(f,phi,x0,Df)
disp('---------------------------------------')

disp('c) x0=-2, Df=10^-2')
figure;
title('c) x0=-2, Df=10^-2');
x0=-2; Df=10^-2;
[c,fc]=pplap(f,phi,x0,Df)
disp('---------------------------------------')

disp('d) x0=-5, Df=10^-4')
figure;
title('d) x0=-5, Df=10^-4');
x0=-5; Df=10^-4;
[c,fc]=pplap(f,phi,x0,Df)
disp('---------------------------------------')
