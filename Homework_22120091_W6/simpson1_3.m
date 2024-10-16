function[I,rEI]=simpson1_3(xx,yy,I_r)
I=0;
sz=length(xx);
for i=1:2:sz-2
    I=I+(xx(i+2)-xx(i))/6*(yy(i)+4*yy(i+1)+yy(i+2));
end
rEI=abs((I_r-I)/I_r);
end