clear all
clc
close all

%a) Giai lai bai 9
xx=[-3.2 -2.5 -1.7 -0.8 0.3 1.5];
yy=[-8.982 -5.831 -4.261 -1.837 -3.298 -0.249];
xc=-2;

yc=newton(xx,yy,xc)