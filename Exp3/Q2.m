clc
clear
f=@(x)x^3 +4*x^2 - 10;
g1=@(x)x - x^3 - 4*x^2 + 10;
g2=@(x) (10/x - 4*x)^0.5;
g3=@(x) 0.5 * (10 - x^3)^(0.5);
g4=@(x) (10/(4+x))^(0.5);
g5=@(x) x - (x^3 + 4 * x^2 -10 )/(3 * x^2 + 8*x);

tol=0.001;

N=input('Enter number of iterations \n');
x0=input('Enter initial approximation \n');    

i=1;
while i<=N
    x1= g4(x0);
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
fprintf('The root is %f',x0);
fprintf('\nNumber of iterations taken is %f\n',i);
end