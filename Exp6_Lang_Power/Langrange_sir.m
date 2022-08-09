clc;
clear;
x=[-1 0 1 2];
y=[3 -4 5 -6];
n=4;
l=ones(1,n);
p=1.5;
for i=1:n
    for j=1:n
        if j~=i
            l(i)=(p-x(j))*l(i)/(x(i)-x(j));
        end
    end
end
sum=0;
for i=1:n
   sum=sum+l(i)*y(i);
end
fprintf('y(%f)=%f\n',p,sum);