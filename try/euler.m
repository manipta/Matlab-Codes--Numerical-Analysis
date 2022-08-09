clc;
clear all;
f=@(t,y) (-y +2*cos(t));
t0=0;
y0=1;
h=0.2;
a=0;
b=1;
n=(b-a)/h;
Y=zeros(n+1,1);
Y(1)=y0;
for i=1:n
    k1=h*f((i-1)*h+t0,Y(i));
    k2=h*f(i*h+t0,Y(i)+k1);
    Y(i+1)=Y(i)+(k1+k2)/2;
end
Y