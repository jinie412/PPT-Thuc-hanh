% b. Giai lai bai tap 1 va 2
clear all
close all
clc

%% Bai tap 1
syms x y;
f=x+y;
a=0;    b=0.4;

dy=0.001;
y0=1;
figure;
[yn1]=viphan_pplap(f,a,b,y0,dy)

%% Bai tap 2
syms x y;
f=2*x^2+y;
a=0;    b=0.5;
dy=0.001;
y0=1;
figure;
[yn2]=viphan_pplap(f,a,b,y0,dy)