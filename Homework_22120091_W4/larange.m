function[yc]=larange(xx,yy,xc)
syms x;
n=length(xx);
L_i=1;
L=0;
for i=1:n
tu=1;
mau=1;
    for j=1:n
        if j==i
            continue
        else
            tu=tu*(x-xx(j));
            mau=mau*(xx(i)-xx(j));
            L_i=tu/mau;
        end
    end
L=L+L_i*yy(i);
end
yc=subs(L,x,xc);
ezplot(L,[xx(1),xx(end)]);
hold on
plot (xx,yy,'bo');
end