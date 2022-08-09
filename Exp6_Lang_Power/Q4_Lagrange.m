clc;
clear;
x=[0 8 16 24 32 40];
y=[14.621 11.843 9.870 8.418 7.305 6.413];
n=6;
p=[15 27];
for k=1:2
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