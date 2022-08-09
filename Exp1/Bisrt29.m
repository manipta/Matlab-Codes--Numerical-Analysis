clc%For clearing our command WIndow
clear%For clearing our workspace
f=@(x)x^2-29;
N=10;
h=1;

for i=-N:h:N
    if f(i)*f(i+h)<0
        a=i;
        b=i+h;
    end
end

fprintf('b=%d\n',b);
while(abs(a-b)>=0.001)
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
    else
        a=c;
    end 
end
fprintf('root is %f\n',c);
        
    