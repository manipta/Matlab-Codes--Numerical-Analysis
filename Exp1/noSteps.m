clc;
clear ;
f=@(x)x^3+4*x^2-10;
N=10;
h=1;
a=1;
b=2;
acc=0.001;

fprintf('b=%d\n',b);
fprintf('Tolerance=%f\n',acc);
s=(log(b-a)-log(acc))/log(2);
i=0;
while(abs(a-b)>=acc)
    c=(a+b)/2;
    if f(a)*f(c)<0
        b=c;
    else
        a=c;
    end 
    i=i+1;
   
end
fprintf('root is %f\n',c);
fprintf('Number of steps taken  is %d\n',round(s) )

        
    