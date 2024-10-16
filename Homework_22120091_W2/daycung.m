function[c,fc]=daycung(f,a,b,Df)
k=1;
hold on
while 1
temp=(b-a)/(f(b)-f(a))*f(a);
c=a-temp;
fc=f(c);
plot(c,fc,'ro');
rEc=abs((c-a)/a);


if abs(fc)<Df
    disp([a b c fc 1 rEc])
break;
else
    disp([a b c fc 0 rEc])
end

if(f(a)*f(c)>0)
    a=c;
else
    b=c;
end
k=k+1;
end
end

