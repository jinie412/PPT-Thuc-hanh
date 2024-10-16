clear all
clc
close all

%a) R(x)=ax^2+bx+c va thu dl thoa y=0.3x^2+0.7x-2.5
y=@(x) 0.3*x^2+0.7*x-2.5;
xx=[1.2; 1.4; 1.5];
yy=[y(xx(1));y(xx(2));y(xx(3))];

xc=1.42;
y_r=y(xc)
figure;
yc=bpnn_ax2bc(xx,yy,xc)

%b) R(x)=ax+bsinx+ccosx va thu dl thoa: y=3x+1.5sinx-3.5cosx
y=@(x) 3*x+1.5*sin(x)-3.5*cos(x);
xx=[1.2; 1.4; 1.5];
yy=[y(xx(1));y(xx(2));y(xx(3))];

xc=1.42;
y_r=y(xc)
figure;
yc=bpnn_axbsincos(xx,yy,xc)