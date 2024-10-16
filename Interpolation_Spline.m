function[yc,S,n]=Interpolation_Spline(xx,yy,xc)
syms x;
h=[xx,0]-[0,xx];
h=h(2:(end-1));

n=length(xx);
n=n-1;
A=zeros(n-1);
b=zeros(n-1,1);
for ii=1:(n-1)
    if ii==1
        A(ii,ii)=(h(ii)+h(ii-1))/3;
        A(ii,ii+1)=h(ii+1)/6;
        b(ii)=(yy(ii+2)-yy(ii+1))/h(ii+1)-(yy(ii+1)-yy(ii))/h(ii);
    elseif ii==n-1
        A(ii,ii-1)=h(ii)/6;
        A(ii,ii)=(h(ii)+h(ii+1))/3;
        b(ii)=(yy(ii+2)-yy(ii+1))/h(ii+1)-(yy(ii+1)-yy(ii))/h(ii);
    else
        A(ii,ii-1)=h(ii)/6;
        A(ii,ii)=(h(ii)+h(ii+1))/3;
        A(ii,ii+1)=h(ii+1)/6;
        b(ii)=(yy(ii+2)-yy(ii+1))/h(ii+1)-(yy(ii+1)-yy(ii))/h(ii);
    end
end

m=[0,(A\B)',0];
S=x*ones(n,1);
for i1=1:n
    M=yy(i1)-m(i1)*h(i1)^2/6;
    N=yy(i1+1)-m(i1+1)*h(i1)^2/6;
    S(i1)=m(i1+1)*((x-xx(i1))^3)/(6*h(i1))+m(i1)*((xx(i1+1)-x)^3)/(6*h(i1))+
    M*(xx(i1+1)-x)/h(i1)+N*(x-xx(i1))/h(i1);
end
k=1;
while(k<=n)
    if(xc>=xx(k)&&xc<=xx(k+1))
        break;
    end
    k=k+1;
end
yc=subs(S(k),x,xc);
end