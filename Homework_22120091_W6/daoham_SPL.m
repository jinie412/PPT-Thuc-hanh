function[df_SPL,rEdf_SPL]=daoham_SPL(xx,yy,df,xc)
df_SPL=0;
for i=1:length(xx)
    if xc==xx(i)
    
    df_SPL=(yy(i)-yy(i-1))/(xx(i)-xx(i-1));
    
    break;
    end
end
    rEdf_SPL=abs((df-df_SPL)/df);

end