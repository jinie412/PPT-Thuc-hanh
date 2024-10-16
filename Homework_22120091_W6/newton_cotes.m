function[I,rEI]=newton_cotes(n,a,b,I_r)
Hn=heso_Hkn(n);
I=sum(Hn)*(b-a);
rEI=abs((I-I_r)/I_r);
end