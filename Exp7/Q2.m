%Newton divided diff interpolation 
clc;
clear;
x=[1 1.5 2 2.5];
y=[2.7183 4.4817 7.3891 12.1825];
p=2.25;
n=4;
for i=1:n
    f(i,1)=y(i);
end
for i=2:n
    for j=i:n
        f(j,i)=(f(j,i-1)-f(j-1,i-1))/(x(j)-x(j-i+1));
    end
end
for i=1:n
    prdct(i)=1;
    for j=1:i-1
        prdct(i)=prdct(i)*(p-x(j));
    end
end
sum=0;
for i=1:n
sum=sum+(f(i,i)*prdct(i));
end
fprintf('Value of e^x at %.2f is %f\n',p,sum);
fprintf('Exact Value of e^x at %.2f is %f\n',p,exp(p));
fprintf('i.e. Calculated Value is having %.2f percent error\n',((sum-exp(p))*100)/exp(p));