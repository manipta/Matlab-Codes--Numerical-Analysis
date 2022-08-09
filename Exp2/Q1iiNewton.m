%newton method
clc
clear
f=@(x)(exp(-x)*(x^2+5*x+2))+1;
fd=@(x)(-exp(-x)*(x^2+5*x+2))+(exp(-x)*(2*x+5));
tol=0.00001;
h=1;
flag=0;
%ivt
 
N=input('Enter number of iterations \n');
x0=-1;
fprintf('Initial Guess is %f as given in question\n',x0);
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
fprintf('The root is %f',x0);
fprintf('\nNumber of iterations is %d\n',i);
end