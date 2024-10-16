clear all
clc
close all

%a) Giai lai bai 1
figure
xx=[2;4;7;8];
yy=[2.2;1.8;2.7;3.1];
x1=3;
x2=7.5;
xc=[x1,x2];
[yc]=spline(xx,yy,xc)

%b) Giai lai bai 2
figure
xx=[2.2;3.6;4.9;5.2;5.7;6.1];
yy=[1.4;3.2;5.1;4.4;3.9;3.2];
x1=4;
x2=5.5;
xc=[x1,x2];
[yc]=spline(xx,yy,xc)

%c) Voi bo du lieu n so va thu lai: y=3^x
figure
y=@(x) 3^x;
xx=[2.2;3.6;4.9;5.3;5.8];
yy=[y(xx(1));y(xx(2));y(xx(3));y(xx(4));y(xx(5))];
x1=5;
x2=4.2;
y_r=[y(x1),y(x2)]
xc=[x1,x2];
[yc]=spline(xx,yy,xc)