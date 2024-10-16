%% a. Viet function tinh dao ham bang pp SPT& df_SPL
%% b. Giai lai bai tap 1
clear all
close all
clc

xx=[0.9;1;1.1;1.2];
yy=[0.7833;0.8415;0.8912;0.9320];
df=0.5403;
xc=1;
[spt,rEdf_spt]=daoham_SPT(xx,yy,df,xc)
[spl,rEdf_spl]=daoham_SPL(xx,yy,df,xc)

