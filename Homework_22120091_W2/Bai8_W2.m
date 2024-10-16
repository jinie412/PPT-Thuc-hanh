%Bai 8

Df=10^-3;
syms x;
% a) exp(x) + 2^-x +2*cos(x)-6
disp('a)exp(x) + 2^-x +2*cos(x)-6')

f_a=exp(x) + 2^-x +2*cos(x)-6;
a=1.5; b=1.9;

figure;
title ('a)exp(x) + 2^-x +2*cos(x)-6 PP daycung');
disp('--PP day cung--')
f=matlabFunction(f_a);
[c1_a,fc1_a]=daycung(f,a,b,Df)

df_a=diff(f_a,x);
figure;
title ('a)exp(x) + 2^-x +2*cos(x)-6 PP tieptuyen');
disp('--PP tiep tuyen--')
x0=1.6;
[c2_a,fc2_a]=tieptuyen(f_a,df_a,x0,Df)
disp('---------------------------------------')

% b) log(x-1) + cos(x-1)
disp('b)log(x-1) + cos(x-1)')

f_b=log(x-1) + cos(x-1);
a=1.1; b=1.5;

figure;
title ('b)log(x-1) + cos(x-1) PP daycung');
disp('--PP day cung--')
f=matlabFunction(f_b);
[c1_b,fc1_b]=daycung(f,a,b,Df)

df_b=diff(f_b,x);
figure;
title ('b)log(x-1) + cos(x-1) PP tieptuyen');
disp('--PP tiep tuyen--')
x0=1.2;
[c2_b,fc2_b]=tieptuyen(f_b,df_b,x0,Df)
disp('---------------------------------------')

% c) (x-2)^2 - log(x)
disp('c)(x-2)^2 - log(x)')

f_c=(x-2)^2 - log(x);
a=1; b=1.5;
figure;
title('c)(x-2)^2 - log(x) PP daycung');
disp('--PP day cung--')
f=matlabFunction(f_c);
[c1_c,fc1_c]=daycung(f,a,b,Df)

df_c=diff(f_c,x); 
figure;
title('c)(x-2)^2 - log(x) PP tieptuyen');
disp('--PP tiep tuyen--')
x0=1.2;
[c2_b,fc2_b]=tieptuyen(f_c,df_c,x0,Df)
disp('---------------------------------------')

% d) sin(x) - exp(-x)
disp('d)sin(x) - exp(-x)')

f_d=sin(x) - exp(-x);
a=0.4; b=0.8;

figure;
title('d)sin(x) - exp(-x) PP daycung');
disp('--PP day cung--')
f=matlabFunction(f_d);

[c1_d,fc1_d]=daycung(f,a,b,Df)

df_d=diff(f_d,x);
figure;
title('d)sin(x) - exp(-x) PP tieptuyen');
disp('--PP tiep tuyen--')
x0=0.5;
[c2_d,fc2_d]=tieptuyen(f_d,df_d,x0,Df)
disp('---------------------------------------')