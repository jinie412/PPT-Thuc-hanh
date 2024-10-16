% Bai 4
% a) Khi chạy chương trình trên (với đầy đủ input) thì trên COMMAND WINDƠN
% sẽ xuất hiện gì?
% Trả lời: Sẽ xuất hiện nghiệm xấp xỉ của phương trình và giá trị của f tại
% nghiệm đó

% b) Hình vẽ có trục x thể hiện điều gì và trục Oy thể hiện điều gì?
% Trả lời: Trục x thể hiện số lần thực hiện khi tìm kiếm nghiệm của phương
% trình, trục Oy thể hiện giá trị của nghiệm trung gian 

% c) chọn màu cyan c, và hình diamond d để vẽ mỗi điểm nghiệm

%d) 
f=@(x) x+sin(x)-2;
a=1; b=1.4; Df=10^-3;
figure;
hold on

k=1;
while 1
    c=(a+b)/2;
    fc=f(c);
    plot(k,fc,'bd');
    rEc= abs((a-c)/a);
    if abs(fc) < Df
        disp([k a b c fc 1 rEc]);
        break;
    else
        disp([k a b c fc 0 rEc]);
    end
    if f(a) * f(c) >0
        a=c;
    else b=c;
    end
    k=k+1;
end
    
