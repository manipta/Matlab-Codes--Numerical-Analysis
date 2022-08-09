clc
clear
f=@(x)2*sin(pi*x)+x;
g1=@(x)x-((2*sin(pi*x)+x)/(2*pi*cos(pi*x)+1));
tol=0.01;

N=input('Enter number of iterations \n');
x0=input('Enter initial approximation \n');    
i=1;
while i<=N
    x1= g1(x0);
    if abs(x1-x0)<=tol || abs(x1-x0)/abs(x1)<=tol
        break      
    
    else
        x0=x1;
    end
    i=i+1;
end
if i>N
    fprintf('doesnt coverge to a fixed point\n');
else
    fprintf('successfull\n');
fprintf('The root is %f',x1);
fprintf('\nNumber of iterations taken is %f\n',i);
end