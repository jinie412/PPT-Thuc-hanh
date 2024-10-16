% Giai lai bai tap 5 va 6
clear all
clc
close all

%% Bai tap 5
a=0;    b=0.4;
f=@(x,y) x+y;
dis=0.1;
y0=1;
[y5]=Runge_Kutta_3(f,a,b,dis,y0)

%% Bai tap 6
f=@(x,y) 2*x^2+y;
a=0;    b=0.5;
dis=0.1;
y0=1;
[y6]=Runge_Kutta_3(f,a,b,dis,y0)