%Bai 8

Df=10^-3;
% a) exp(x) + 2^-x +2*cos(x)-6
disp('a) exp(x) + 2^-x +2*cos(x)-6')
f_a=@(x) exp(x) + 2^-x +2*cos(x)-6;
a=1.5; b=1.9;

figure;
title ('a) exp(x) + 2^-x +2*cos(x)-6 PP chia doi');
[c1_a,fc1_a]=chiadoi(f_a,a,b,Df)

phi_a=@(x) log(6-2*cos(x)-2^-x);
figure;
title ('a) exp(x) + 2^-x +2*cos(x)-6 PP lap');

x0=1.6;
[c2_a,fc2_a]=pplap(f_a,phi_a,x0,Df)
disp('---------------------------------------')

% b) log(x-1) + cos(x-1)
disp('b) log(x-1) + cos(x-1)')
f_b=@(x) log(x-1) + cos(x-1);
figure;
title ('b) log(x-1) + cos(x-1) PP chia doi');
a=1.1; b=1.5;
[c1_b,fc1_b]=chiadoi(f_b,a,b,Df)

phi_b=@(x) 1 + exp(-cos(x-1));
figure;
title ('b) log(x-1) + cos(x-1) PP lap');
x0=1.2;
[c2_b,fc2_b]=pplap(f_b,phi_b,x0,Df)
disp('---------------------------------------')

% c) (x-2)^2 - log(x)
disp('c) (x-2)^2 - log(x)')
f_c=@(x) (x-2)^2 - log(x);
figure;
title('(x-2)^2 - log(x) PP chia doi');
a=1; b=1.5;
[c1_c,fc1_c]=chiadoi(f_c,a,b,Df)

phi_c=@(x) (x^2-log(x)+4)/4; 
figure;
title('(x-2)^2 - log(x) PP lap');
x0=1.2;
[c2_b,fc2_b]=pplap(f_c,phi_c,x0,Df)
disp('---------------------------------------')

% d) sin(x) - exp(-x)
disp('d) sin(x) - exp(-x)')
f_d=@(x) sin(x) - exp(-x);
figure;
title('sin(x) - exp(-x) PP chia doi');

a=0.4; b=0.8;
[c1_d,fc1_d]=chiadoi(f_d,a,b,Df)

phi_d=@(x) asin(exp(-x));
figure;
title('sin(x) - exp(-x) PP lap');
x0=0.5;
[c2_d,fc2_d]=pplap(f_d,phi_d,x0,Df)
disp('---------------------------------------')