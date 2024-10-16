function [yc] = bpnn_ax_b(xx, yy, xc)


log_xx = log(xx);
log_yy = log(yy);


N = length(xx);
sum_log_x = sum(log_xx);
sum_log_y = sum(log_yy);
sum_log_x2 = sum(log_xx.^2);
sum_log_xy = sum(log_xx .* log_yy);

syms log_a b;
eqns = [N*log_a + sum_log_x*b == sum_log_y, sum_log_x*log_a + sum_log_x2*b == sum_log_xy];
sol = solve(eqns, [log_a, b]);

log_a = double(sol.log_a);
b = double(sol.b);

a = exp(log_a);

syms x;
R = a*x^b;

yc = double(subs(R, x, xc));
    
fplot(R,[xx(1) xx(end)],'k');
hold on;
plot(xx,yy,'bo')
plot(xc,yc,'ro')
legend('Da thuc xap xi', 'Bang du lieu','Gia tri tra ra');
end
