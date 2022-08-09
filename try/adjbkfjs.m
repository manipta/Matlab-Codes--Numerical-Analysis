%SOR
clc;
clear all;
a=[10 8 -3 1; 2 10 1 -4;3 -4 10 1;2 2 -3 10];
b=[16;9;10;11];
n=4;
xo=zeros(1,n);
x=zeros(1,n);
N=10;
k=1;
w=1.2;
tol=1e-3;
while k<=N
for i=1:n
    sum1=0;
    for j=1:i-1
    sum1=sum1+a(i,j)*x(j);
    end
    sum2=0;
    for j=i+1:n
    sum2=sum2+a(i,j)*xo(j);
    end
    x(i)=(1-w)*xo(i)+w*(b(i)-sum1-sum2)/(a(i,i));
end
if max(abs(x-xo))<tol
    break;

else
    xo=x;
    k=k+1;
end
end
x
k