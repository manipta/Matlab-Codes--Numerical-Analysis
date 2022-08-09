clc
clear
n=5;
a=[5 5 0 0 0; 0 0 1 -1 -1; 0 0 0 2 -3; 1 -1 -1 0 0; 0 5 -7 -2 0];
b=[5.5; 0; 0; 0; 0];
p=0;
for i=1:n-1
    for k=i:n
        if (a(k,i)~=0)
            p=k;
            break;
        end
    end
    if(p==0) 
        disp('No Unique Solution Exists');
        break;
    end
    if (p~=i)
        t=a(i,:);
        a(i,:)=a(p,:);
        a(p,:)=t;
        t=b(i,:);
        b(i,:)=b(p,:);
        b(p,:)=t;
    end
for j=i+1:n
m(j,i)=a(j,i)/a(i,i);
a(j,:)= a(j,:) - m(j,i)*a(i,:);
end
end
if a(n,n)==0
    disp('No Unique Solution Exists');
else
U=a;
L=m;
for i=1:n
    L(i,i)=1;
end
y=inv(L)*b;
x=inv(U)*y; 
end
for i=1:n
    fprintf('%f\n',x(i));
end 