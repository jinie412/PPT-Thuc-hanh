function[y]=Runge_Kutta_3(f,a,b,dis,y0)
xx=a:dis:b;
h=xx(2:end)-xx(1:end-1);
y=0*xx;
y(1)=y0;
sz=length(xx);
for i=2:sz
    k1=h(i-1)*f(xx(i-1),y(i-1));
    k2=h(i-1)*f(xx(i-1)+h(i-1)/2,y(i-1)+k1/2);
    k3=h(i-1)*f(xx(i-1)+h(i-1),y(i-1)-k1+2*k2);
    y(i)=double(y(i-1)+(k1+4*k2+k3)/6);
end
end