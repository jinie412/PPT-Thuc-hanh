function[Xn]=Seidel(A,C,n,Df)
k=1;
B=-A./diag(A)+eye(n);
G=C./diag(A);
X0=G;
B1=tril(B,-1);
B2=triu(B,0);

while 1
    
    Xn=(eye(n)-B1)^(-1)*(B2*X0+G);
    FX=norm(A*Xn-C);
    if abs(FX)<Df
        disp([k Xn' FX 1])
        break;
   else
        disp([k Xn' FX 0])
    end
    
    k=k+1;
    X0=Xn;
end
end