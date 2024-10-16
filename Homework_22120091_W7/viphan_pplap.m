function[yn]=viphan_pplap(f,a,b,y0,dy)
syms x y;
hold on;
xlabel('x');
ylabel('y');
k=1;
x0=a;
yo=y0;
    while 1
        yn=y0+int(subs(f,y,yo),x,x0,x);
        
        rEyn=double(abs(int(yn-yo,x,a,b)/int(yo,x,a,b)));
        if rEyn<=dy
        disp([k yn rEyn 1])
        h1=fplot(yn,[a b],'r');
        break;
        else
        disp([k yn rEyn 0])
        h2=fplot(yn,[a b],'--k');
        end
        yo=yn;
        k=k+1;
    end
    legend([h1,h2],'Da thuc tam thoi','Da thuc ket qua');
    title('Do thi');
    hold off
end