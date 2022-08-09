clc;
clear all;
x=[1;1;1];
tol=1e-3;
a=[4 1 0;1 20 1;0 1 4];
k1=inf;
e=1;
while (e>tol)
y=a*x;
k2=max(abs(y));
x=y/k2;
e=abs(k2-k1);
k1=k2;
end
k1
x