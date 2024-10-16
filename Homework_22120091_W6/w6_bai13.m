% Giai lai bai tap 5 va 6
clear all
close all
clc

%% Bai tap 5
syms t;
f=exp(t);
a=2;
b=4;
I_r=int(f,t,a,b);
[I,rEI]=ppGauss_2d(f,a,b,I_r)

%% Bai tap 6
syms t;
f=sin(t);
a=0;
b=pi;
I_r=int(f,t,a,b);
[I,rEI]=ppGauss_2d(f,a,b,I_r)