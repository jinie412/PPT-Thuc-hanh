%Bai 10
clc
clear all
close all
%a) Giai lai bai 6
figure
xx=[1.1;3.2;5.1;7.7;9.6;12.2];
yy=[3.1;29.9;65.7;100.4;195.7;300.4];
xc=8.5;
yc=bpnn_aebx(xx,yy,xc)

%b) Giai lai bai 7
figure
xx=[2;4;7;8.5;9.5;11];
yy=[2.2;2.5;2.7;3.1;3.2;3.5];
xc=7.7;
yc=bpnn_aebx(xx,yy,xc)

%c) Giai lai bai 8
figure
xx=[3;3.4;4.1;4.3;4.7;5.3;5.3;6;6.4];
yy=[1.23;1.4;1.69;1.79;2.13;2.52;2.45;2.97;3.44];
xc=5;
yc=bpnn_aebx(xx,yy,xc)

