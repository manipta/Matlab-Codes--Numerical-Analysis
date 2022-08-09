clc
clear 
n=1000;
i=1;
tol=10^-3;
f=@(x)x^3+4*x^2-10;
g=@(x)sqrt(10/(4+x));
x0=1.5;
while(i<=n)    
    x1=g(x0);
    if abs(x1-x0)<=tol
        fprintf('x1 = %f\nSteps Taken= %d\n',x1,i);
        break;
    else
        i=i+1;
        x0=x1;   
    end
end
if(i>n)fprintf('x1=%f\n',x1);
end