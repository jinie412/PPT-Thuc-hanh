function[yc]=tongquat(xx,yy,xc)
n=length(xx);
X=zeros(n,n);
Y=yy'; 
for i = 1:n
    temp=[1];
    for j =1:n-1
        temp=[temp, xx(i)^j];
    end
    X=[X;temp]; 
    
end

A=X^(-1)*Y;
syms x;
m=size(A);
P=0;
for i=1:m
    P=P+A(i)*x^(i-1);
end
yc=subs(P,x,xc)
ezplot(P,[xx(1) xx(end)]);
hold on;
plot(xx,yy,'bo');
end


function[yc]=tongquat(xx,yy,xc)
n=length(xx);
X=ones(n,n);
Y=yy;
for i = 1:n
    
    for j=2:n
    X(i,j)=xx(i)^(j-1);
    end
   
end

A=X\Y';
syms x;
P=0;
for i=1:n
    P=P+A(i)*x^(i-1);
end
yc=double(subs(P,x,xc));
fplot(P,[xx(1) xx(end)]);
hold on;
plot(xx,yy,'bo');
hold off
end

