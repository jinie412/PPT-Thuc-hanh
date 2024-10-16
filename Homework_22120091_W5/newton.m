function [yc]=newton(xx,yy,xc)

sz=length(xx);
n = cell(sz, 1);


n{1}=yy;

for i=2:sz
n{i} = zeros(1, sz - i + 1);
    for j=1:sz-i+1
    n{i}(j)=(n{i-1}(j+1)-n{i-1}(j))/(xx(j+i-1)-xx(j));
    end
end


syms x;
N=n{1}(1);
for i=2:sz
    temp=n{i}(1);
    for j=1:i-1
        temp=temp*(x-xx(j));
    end
    N=N+temp;
end

yc=double(subs(N,x,xc));
fplot(N,[xx(1),xx(end)],'k');
hold on
plot(xx,yy,'bo');
plot(xc,yc,'ro');
legend('Da thuc','Bang gia tri', 'Gia tri tra ra');

end