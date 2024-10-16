function[y]=ppEulerCT(f,a,b,y0,h)
xx=a:h:b;

y=0*xx;
y(1)=y0;
sz=length(xx);
for i=2:sz
  y_t=y(i-1)+(xx(i)-xx(i-1))*(f(xx(i-1),y(i-1)));
  y(i)=y(i-1)+h*(f(xx(i-1),y(i-1))+f(xx(i),y_t))/2;
end
end