function[yc]=spline(xx,yy,xc)
h=xx(2:end)-xx(1:end-1);
n=length(xx);

VP=zeros(n,1);

for i=2:n-1
    VP(i)=(yy(i+1)-yy(i))/h(i)-(yy(i)-yy(i-1))/h(i-1);
end

VT=zeros(n,n);
VT(1,1)=1;
VT(n,n)=1;

for i=2:n-1
    j=i-1;
    VT(i,j)=h(j)/6;
    VT(i,j+1)=(h(j)+h(i))/3;
    VT(i,j+2)=h(i)/6;
end
m=VT^(-1)*VP;


M=yy(1:end-1)-m(1:end-1).*h(1:end).^2/6;
N=yy(2:end)-m(2:end).*h(1:end).^2/6;

S = cell(1, n-1);
syms x;
for i=1:n-1
S{i}=m(i+1)*(x-xx(i))^3/6/h(i)+m(i)*(xx(i+1)-x)^3/6/h(i)+M(i)*(xx(i+1)-x)/h(i)+N(i)*(x-xx(i))/h(i);
end

yc = zeros(size(xc));
    for j = 1:length(xc)
        x_val = xc(j);
        for i = 1:n-1
            if x_val >= xx(i) && x_val <= xx(i+1)
                yc(j) = subs(S{i}, x, x_val);
                break;
            end
        end
    end


plot(xx,yy,'bo');
hold on;
for i = 1:n-1
        fplot(S{i}, [xx(i), xx(i+1)]);
end
    plot(xc, yc, 'ro');
    legend('Bang gia tri', 'Splines','Gia tri tra ra');


end