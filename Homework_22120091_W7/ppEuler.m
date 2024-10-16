function[y]=ppEuler(f,a,b,y0)
xx=a:0.1:b;
y=0*xx;
y(1)=y0;
sz=length(xx);
for i=2:sz
  y(i)=y(i-1)+(xx(i)-xx(i-1))*(f(xx(i-1),y(i-1)));
end
end