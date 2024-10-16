function[yc]=bpnn_aebx(xx,yy,xc)
N=length(xx);
X=sum(xx);
lY=sum(log(yy));
XX=sum(xx.*xx);
XlY=sum(xx.*log(yy));
syms A B;
[A,B]=solve(XX*A+X*B==XlY, X*A+N*B==lY);
syms x;
R=exp(B)*exp(A*x);
yc=double(subs(R,x,xc));

fplot(R,[xx(1) xx(end)],'k');
hold on;
plot(xx,yy,'bo')
plot(xc,yc,'ro')
legend('Da thuc xap xi', 'Bang du lieu','Gia tri tra ra');
end