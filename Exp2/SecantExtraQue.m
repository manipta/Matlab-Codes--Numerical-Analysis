%secant method
clc
clear
f=@(x)exp(x)-cos(x);
tol=0.00001;
h=1;
flag=0;
%ivt
for i=-10:h:10
    if(f(i)*f(i+h)<0)
        a=i;
        b=i+h;
    end
end
        
N=input('Enter number of iterations \n');
x0=a;
x1=b;
fprintf('Initial Guess\nroot should be in between %f and %f\n',x0,x1);
%secant Formula
i=1;
while i<=N
    
    x2= x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0));
    if abs(x1-x0)<=tol || abs(x1-x0)/abs(x1)<=tol
        flag=1;
        break      
    
    else
        x0=x1;
        x1=x2;
        i=i+1;
    end
    
end
if flag~=1
    fprintf('unsuccessfull\nFailed to achieve tolerance of %f after %d iterations',tol,N);
else
    fprintf('successfull\n');
fprintf('The root is %f',x0);
fprintf('\nNumber of iterations is %d\n',i);
end