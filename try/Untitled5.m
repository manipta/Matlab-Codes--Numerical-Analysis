clc;
clear all;
a=[10 8 -3 1; 2 10 1 -4;3 -4 10 1;2 2 -3 10];
b=[16; 9 ; 10;11];
n=4;
tol=1e-3;
x0=zeros(1,n);
sum=0;
for i=1:n
    for j=1:i-1
    sum=sum+a(