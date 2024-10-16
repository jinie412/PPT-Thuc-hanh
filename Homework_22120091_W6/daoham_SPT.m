function[df_SPT,rEdf_SPT]=daoham_SPT(xx,yy,df,xc)
df_SPT=0;
for i=1:length(xx)
    if xc==xx(i)
    df_SPT=(yy(i+1)-yy(i))/(xx(i+1)-xx(i));
    
    break;
    end
end
rEdf_SPT=abs((df-df_SPT)/df);

end