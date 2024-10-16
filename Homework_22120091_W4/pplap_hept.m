function[Xn]=pplap_hept(A,C,Df,n)
B=-A./diag(A) + eye(n);
G=C./diag(A);
k=1;
x0=G;
while 1
  Xn=B*x0+G;
  fx=norm(A*Xn-C);
  if abs(fx)<Df
      disp([k Xn' fx 1])
      break;
  else
      disp([k Xn' fx 0])
  end
  k=k+1;
  x0=Xn;
end
end