%secant method
clc
clear
f=@(t) 9*exp(-t) * sin(2*pi*t) - 3.5;
tol=0.00001;
h=0.1;
flag=0;
%ivt
for i=0:h:5
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
    fprintf('unsuccessfull\nFailed to achieve tolerance of %f after %d iterations\n',tol,N);
else
    fprintf('successfull\n');
fprintf('The value of t is %f',x0);
fprintf('\nNumber of iterations is %d\n',i);
end