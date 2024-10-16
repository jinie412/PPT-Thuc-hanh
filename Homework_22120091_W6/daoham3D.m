function[df_3DC,df_3DG]=daoham3D(xx,yy,df,xc)

for i=1:length(xx)
    if xc==xx(i)
    
    df_3DC=(-3*yy(i)+4*yy(i+1)-yy(i+2))/(xx(i+2)-xx(i));
    df_3DG=(-yy(i-1)+yy(i+1))/(xx(i+1)-xx(i-1));
    break;
    end

end
rEdf_3DC=abs((df-df_3DC)/df)
rEdf_3DG=abs((df-df_3DG)/df)
end