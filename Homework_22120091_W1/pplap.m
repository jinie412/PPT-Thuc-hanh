% pplap
function[c,fc]=pplap(f,phi,x0,Df)
k=1;
hold on

c=x0;
while 1 
    c=phi(c);
	fc=f(c);
	plot(k,fc,'ro');
	rEc=abs((c-x0)/x0);
	if abs(fc) < Df
		disp([k c fc 1 rEc])
		break;
	else
		disp([k c fc 0 rEc])
	end
	k=k+1;
end
end