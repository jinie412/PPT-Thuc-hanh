% Bai 5
syms x;
f=x+log(x+2)-10;
df=diff(f,x);

%a) x0=7, Df=10^-3
disp('a) x0=7, Df=10^-3')
figure;
title('a) x0=7, Df=10^-3');
x0=7; Df=10^-3;
[c,fc]=tieptuyen(f,df,x0,Df)
disp('---------------------------------------')

%b) x0=9, Df=2*10^-3
disp('b) x0=9, Df=2*10^-3')
figure;
title('b) x0=9, Df=2*10^-3');
x0=9; Df=2*10^-3;
[c,fc]=tieptuyen(f,df,x0,Df)
disp('---------------------------------------')

%c) x0=5, Df=5*10^-3
disp('c) x0=5, Df=5*10^-3')
figure;
title('c) x0=5, Df=5*10^-3');
x0=5; Df=5*10^-3;
[c,fc]=tieptuyen(f,df,x0,Df)
disp('---------------------------------------')

%d) x0=3, Df=5*10^-3
disp('d) x0=3, Df=5*10^-3')
figure;
title('d) x0=3, Df=5*10^-3');
x0=3; Df=5*10^-3;
[c,fc]=tieptuyen(f,df,x0,Df)
disp('---------------------------------------')
