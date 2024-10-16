function [yc] = bpnn_axbsincos(xx, yy, xc)
N = length(xx);
X = sum(xx);
Y = sum(yy);
Sx = sum(sin(xx));
Cx = sum(cos(xx));
Sx2 = sum(sin(xx).^2);
Cx2 = sum(cos(xx).^2);
SCx = sum(sin(xx).*cos(xx));
Sxy = sum(sin(xx).*yy);
Cxy = sum(cos(xx).*yy);
Xsy = sum(xx.*yy);
Xsx = sum(xx.*sin(xx));
Xcx = sum(xx.*cos(xx));
X2 = sum(xx.^2);


syms a b c;
eqns = [N*a + Sx*b + Cx*c == Y, X*a + Xsx*b + Xcx*c == Xsy, Sx*a + Sx2*b + SCx*c == Sxy, Cx*a + SCx*b + Cx2*c == Cxy];
sol = solve(eqns, [a, b, c]);

a = double(sol.a);
b = double(sol.b);
c = double(sol.c);


syms x;
R = a*x + b*sin(x) + c*cos(x);

yc = double(subs(R, x, xc));

fplot(R, [xx(1), xx(end)]);
hold on;
plot(xx, yy, 'bo');
plot(xc, yc, 'ro');
end