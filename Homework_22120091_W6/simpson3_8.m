function[I,rEI]=simpson3_8(xx,yy,I_r)
I=0;
sz=length(xx);
for i=1:3:sz-3
    I=I+(xx(i+3)-xx(i))/8*(yy(i)+3*yy(i+1)+3*yy(i+2)+yy(i+3));
end
rEI=abs((I-I_r)/I_r);
end