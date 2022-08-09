clc
clear
n=3;
C=[2.22 ;-3.17; 5.11];
A=[4.63 -1.21 3.22;-3.07 5.48 2.11;1.26 3.11 4.57];
x0=[0 0 0]; %initial guess
tol=0.001;
x=[0 0 0];
itr=1;
N=100;
while itr<N
    for i=1:n
        x(i)=(C(i)-A(i,1:i-1)*x(1:i-1)'-A(i,i+1:n)*x0(i+1:n)')/A(i,i);
    end
    if(norm(x-x0,inf))<tol
        break;
    end
    x0=x;
    itr=itr+1;
end
if itr>=N
    fprintf('Iterations Exceeded %d\n',N);
else
for i=1:n
    fprintf('x%d is %f\n',i,x(i));
end
end
fprintf('Number of iterations are %d\n',itr);