%Bai 9
clc
clear all
close all
%a) Giai lai bai 3

xx=[2;4;7;8.5;9.5;11];
yy=[2.2;4.2;6.8;8.1;9.7;10.5];
xc=6;
figure;
yc=bpnn_axPb(xx,yy,xc)

%b) Giai lai bai 4
xx=[1;2.1;2.9;3.8;5;6.2];
yy=[3.021;4.219;5.018;5.986;7.139;8.138];
xc=4.5;
figure;
yc=bpnn_axPb(xx,yy,xc)

%c) Giai lai bai 5
xx=[1;1.6;2.1;3;3.3;3.7;4.1;4.9;6.2];
yy=[1.1;2.2;3.5;4.9;7.2;7.8;7.9;8.5;10];
xc=3.5;
figure;
yc=bpnn_axPb(xx,yy,xc)