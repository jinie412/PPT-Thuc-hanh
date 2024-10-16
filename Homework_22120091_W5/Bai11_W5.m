clear all
clc
close all

%a) R(x)=ax^2+b va thu dl thoa y=0.5x^2+1.5
y=@(x) 0.5*x^2+1.5;
xx=[1.2; 1.4; 1.5];
yy=[y(xx(1));y(xx(2));y(xx(3))];

xc=1.42;
y_r=y(xc)
figure;
yc=bpnn_ax2b(xx,yy,xc)

%b) R(x)=ax^b va thu dl thoa: y=2x^1.3
y=@(x) 2*x^1.3;
xx=[1.2; 1.4; 1.5];
yy=[y(xx(1));y(xx(2));y(xx(3))];

xc=1.42;
y_r=y(xc)
figure;
yc=bpnn_ax_b(xx,yy,xc)