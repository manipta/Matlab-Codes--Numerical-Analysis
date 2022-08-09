clc;
clear;
x=[0 pi/4 2*pi/4 3*pi/4 4*pi/4 5*pi/4 6*pi/4 7*pi/4 8*pi/4];
n=9;
for i=1:n
   y(i)=(sin(x(i)))^2;
end
p=[0.5 3.5 5.5 6];
for k=1:4
    l=ones(1,n);
for i=1:n
    for j=1:n
        if j~=i
            l(i)=(p(k)-x(j))*l(i)/(x(i)-x(j));
        end
    end
end
sum=0;
for i=1:n
   sum=sum+l(i)*y(i);
end
fprintf('y(%f)=%f\n',p(k),sum);
end