function[c,fx]=tieptuyen(f,df,x0,Df)
k=1;
hold on
f=matlabFunction(f);
df=matlabFunction(df);
c=x0;
while 1
c=c-(f(c)/df(c));
fx=f(c);
plot(c,fx,'ro');
rExn=abs((c-x0)/x0);
if abs(fx)<Df
disp([k c fx 1 rExn])
break;
else 
disp ([k c fx 0 rExn])
end
k=k+1;
end
end