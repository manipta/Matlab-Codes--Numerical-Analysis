clc;
clear;
A=[1 1 0 0;1 2 0 1;0 0 3 3;0 1 2 3];
x=[1;1;0;1];
tol=0.001;
e=1;
t=0;
n=100;
for i=1:n
    y=A*x;
    k=norm(y,inf);
    x=(1/k)*y;
    e=abs(k-t);
    t=k;
    if i>=2 && e<=tol
        break;
    end
end
fprintf("Largest Eigen-Value with an error of %0.3f is %0.3f\n",tol,k);
fprintf(",and the corresponding Eigen-Vector is [%0.3f %0.3f %0.3f %0.3f]T\n",x(1:4));
%%Mani Garg     102003470   2COE19


