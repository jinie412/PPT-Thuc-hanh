function [yc] = bpnn_ax2bc(xx, yy, xc)

N = length(xx);
X = sum(xx);
Y = sum(yy);
X2 = sum(xx.^2);
X3 = sum(xx.^3);
X4 = sum(xx.^4);
XY = sum(xx .* yy);
X2Y = sum(xx.^2 .* yy);


syms a b c;
eqns = [X4*a + X3*b + X2*c == X2Y, X3*a + X2*b + X*c == XY, X2*a + X*b + N*c == Y];
sol = solve(eqns, [a, b, c]);

a = double(sol.a);
b = double(sol.b);
c = double(sol.c);


syms x;
R = a*x^2 + b*x + c;
    

yc = double(subs(R, x, xc));

fplot(R, [xx(1), xx(end)]);
hold on;
plot(xx, yy, 'bo');
plot(xc, yc, 'ro');
end