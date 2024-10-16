% Bai 5
f=@(x) exp(x)-x-3;

%a) a=0, b=3, Df=10^-3
disp('a) a=0, b=3, Df=10^-3')
figure;
title('a) a=0, b=3, Df=10^-3');
a=0; b=3; Df=10^-3;
[c,fc]=chiadoi(f,a,b,Df)
disp('---------------------------------------')

%b) a=0, b=2, Df=5*10^-3
disp('b) a=0, b=2, Df=5*10^-3')
figure;
title('b) a=0, b=2, Df=5*10^-3');
a=0; b=2; Df=5*10^-3;
[c,fc]=chiadoi(f,a,b,Df)
disp('---------------------------------------')

%c) a=-3, b=0, Df=10^-4
disp('c) a=-3, b=0, Df=10^-4')
figure;
title('c) a=-3, b=0, Df=10^-4');
a=-3; b=0; Df=10^-4;
[c,fc]=chiadoi(f,a,b,Df)
disp('---------------------------------------')

%d) a=-3, b=-1, Df=10^-4
disp('d) a=-3, b=-1, Df=10^-4')
figure;
title('d) a=-3, b=-1, Df=10^-4');
a=-3; b=-1; Df=10^-4;
[c,fc]=chiadoi(f,a,b,Df)
disp('---------------------------------------')