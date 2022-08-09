%newton method
clc
clear
f=@(t) 9*exp(-t) * sin(2*pi*t) - 3.5;
fd=@(t)(-9*exp(-t) * sin(2*pi*t))+(18*pi*exp(-t) * cos(2*pi*t));
tol=0.00001;
h=0.1;
flag=0;
%ivt
for i=0:h:10
    if(f(i)*f(i+h)<0)
        a=i;
        b=i+h;
    end
end
        
N=input('Enter number of iterations \n');
x0=(a+b)/2;
fprintf('Initial Guess is %f by IVT\n',x0);
%Newton Formula
i=1;
while i<=N
    
    x1= x0 - (f(x0)/fd(x0));
    if abs(x1-x0)<=tol || abs(x1-x0)/abs(x1)<=tol
      flag=1;
        break      
    
    else
        x0=x1;
        i=i+1;
    end
    
end
if flag~=1
    fprintf('unsuccessfull\nFailed to achieve tolerance of %f after %d iterations\n',tol,N);
else
    fprintf('successfull\n');
fprintf('The value of t is %f seconds',x0);
fprintf('\nNumber of iterations is %d\n',i);
end