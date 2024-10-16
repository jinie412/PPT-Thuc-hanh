function[I,rEI]=tichphan_hinhthang(xx,yy,I_r)
I=0;
sz=length(xx);
for i=1:sz-1
    I=I+(xx(i+1)-xx(i))*(yy(i)+yy(i+1))/2;
end
rEI=abs((I-I_r)/I_r);
end