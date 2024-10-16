%% b. Giai lai bai tap 3 va bai tap 4
% Bai tap 3
clear all
close all
clc

xx=[1;2;3;4;5;6;7];
yy=[4;-6;-14;-14;0;34;94];
I_r=42;
[I1,rEI1]=simpson3_8(xx,yy,I_r)

% Bai tap 4
xx=[-2;-1;0;1;2;3;4];
yy=[24;1;4;3;-8;-11;36];
I_r=7.2;
[I2,rEI2]=simpson3_8(xx,yy,I_r)