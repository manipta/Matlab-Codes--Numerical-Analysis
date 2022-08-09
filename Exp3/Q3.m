clc
clear
f=@(x)4*x-tan(x);
g1=@(x)x-((4*x-tan(x))/(4-(sec(x))^2));
tol=0.001;
h=0.1;
for i=0:h:2
    if(f(i)*f(i+h)<0)
        a=i;
        b=i+h;
        c=(a+b)/2;
        break;
    end
end
for i=2:h:5
    if(f(i)*f(i+h)<0)
        a=i;
        b=i+h;
        d=(a+b)/2;
        break;
    end
end
x0=c;
for k=1:1:2

N=input('Enter number of iterations \n');  
i=1;
fprintf('Initial Approximation(via IVT): %f\n',x0);
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
fprintf('The %d smallest root is %f',k,x1);
fprintf('\nNumber of iterations taken is %f\n\n',i);
end

x0=d;
end