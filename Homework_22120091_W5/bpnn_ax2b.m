function [yc] = bpnn_ax2b(xx, yy, xc)
X2 = sum(xx.^2);
X4 = sum(xx.^4);
Y = sum(yy);
X2Y = sum(xx.^2 .* yy);
N = length(xx);
    
syms a b;
[a, b] = solve([X4*a + X2*b == X2Y, X2*a + N*b == Y]);

syms x;
R = a*x^2 + b;

yc = double(subs(R, x, xc));

fplot(R,[xx(1) xx(end)],'k');
hold on;
plot(xx,yy,'bo')
plot(xc,yc,'ro')
legend('Da thuc xap xi', 'Bang du lieu','Gia tri tra ra');
    
end