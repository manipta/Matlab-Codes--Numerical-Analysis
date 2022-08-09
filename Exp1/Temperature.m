clc
clear
f=@(x)1.129241*10^-3+2.341077*(10^-4)*2.303*log(x)+8.775468*10^-8*(2.303*log(x))^3-(1/292.14);
h=1;
tol=0.001;
n=1000;
%ivt
for i=-n:h:n
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
    end
end
    
count=0;
%logic of bisection
while abs(a-b)>=tol
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;      
    elseif f(c)==0
        break;
    else
        a=c;
    end
    count=count+1;
end

fprintf('The root is %f',c);
fprintf('\nNumber of iterations is %d\n',count);