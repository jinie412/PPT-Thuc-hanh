function[I,rEI]=ppGauss_2d(f,a,b,I_r)
syms t;

w1=1;
x12=-0.5774;
t12=(b-a)*x12/2+(a+b)/2;

w2=1;
x22=0.5774;
t22=(b-a)*x22/2+(a+b)/2;

I=double((b-a)/2*(w1*subs(f,t,t12)+w2*subs(f,t,t22)));

rEI=double(abs((I-I_r)/I_r));
end