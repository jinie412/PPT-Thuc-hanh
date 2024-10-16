function[I,rEI]=ppGauss_4d(f,a,b,I_r)
syms t;

w1=0.3479;
x14=-0.8611;
t14=(b-a)*x14/2+(a+b)/2;

w2=0.6521;
x24=-0.3340;
t24=(b-a)*x24/2+(a+b)/2;

w3=0.6521;
x34=0.3340;
t34=(b-a)*x34/2+(a+b)/2;

w4=0.3479;
x44=0.8611;
t44=(b-a)*x44/2+(a+b)/2;

I=double((b-a)/2*(w1*subs(f,t,t14)+w2*subs(f,t,t24)+w3*subs(f,t,t34)+w4*subs(f,t,t44)));

rEI=double(abs((I-I_r)/I_r));
end