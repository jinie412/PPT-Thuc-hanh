%% a. Viet function tinh dao ham bang pp 3 diem
%% b. Giai lai bai tap 1
clear all
close all
clc

xx=[0.9;1;1.1;1.2];
yy=[0.7833;0.8415;0.8912;0.9320];
df=0.5403;
xc=1;
[df_3DC,df_3DG]=daoham3D(xx,yy,df,xc)
