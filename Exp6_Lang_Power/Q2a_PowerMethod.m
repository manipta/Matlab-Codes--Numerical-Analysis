clc;
clear;
A=[1 2 0;-2 1 -2;1 3 1];
x=[1;1;1];
tol=0.01;
e=1;
t=0;
n=200;
for i=1:n
    y=A*x;
    k=norm(y,inf);
    x=(1/k)*y;
    e=abs(k-t);
    t=k;
    if (i>=2 && e<=tol)
        break;
    end
end
fprintf("Largest Eigen-Value with an error of %0.3f is %0.3f\n",tol,k);
fprintf(",and the corresponding Eigen-Vector is [%0.3f %0.3f %0.3f]T\n",x(1:3));
fprintf("iterations: %d\n",i);
%%Mani Garg     102003470   2COE19


