% b. Giai lai bai tap 3 va 4
clear all
clc
close all

%% bai 3
f=@(x,y) x+y;
a=0; b=0.4; 
y0=1;
[y3]=ppEuler(f,a,b,y0)

%% bai 4
f=@(x,y) 2*x^2+y;
a=0; b=0.5; 
y0=1;
[y4]=ppEuler(f,a,b,y0)