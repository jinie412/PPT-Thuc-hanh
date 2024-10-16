function[yc]=bpnn_axPb(xx,yy,xc)
N=length(xx);
X=sum(xx);
Y=sum(yy);
XX=sum(xx.*xx);
XY=sum(xx.*yy);
syms a b;
[a,b]=solve(XX*a+X*b==XY, X*a+N*b==Y);
syms x;
R=a*x+b;
yc=double(subs(R,x,xc));
fplot(R,[xx(1) xx(end)],'k');
hold on;
plot(xx,yy,'bo')
plot(xc,yc,'ro')
legend('Da thuc xap xi', 'Bang du lieu','Gia tri tra ra');
end
