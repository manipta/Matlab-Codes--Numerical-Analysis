clc
clear
f=@(x)x^3 +4*x^2 - 10;
g1=@(x)0.5 * (10 - x^3)^(0.5); 
tol=0.001;

N=input('Enter number of iterations \n');
x0=input('Enter initial approximation \n');    

i=1;
while i<=N
    x1= g1(x0);
    if abs(x1-x0)<=tol 
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