clc
clear
n=3;
P=[3 2 -1;1 -3 2;2 -1 1];
C=[1; 2; 3];
a=[P C];
q=0;
for i=1:n-1
    for k=i:n
        if (a(k,i)~=0)
            q=k;
            break;
        end
    end
    if(q==0)  %checks by any chance each coeff is not zero of first column
        disp('Unique Solution does not Exists');
        break;
    end
    if (q~=i) %to change the pivot row having pivot element as 0
        temp=a(i,:);
        a(i,:)=a(q,:);
        a(q,:)=temp;
    end
for j=i+1:n
a(j,:)= a(j,:) - (a(j,i)/a(i,i))*a(i,:);
end
end
if a(n,n)==0
    disp('More than one solution exist');
else
x(n) = (a(n,n+1))/a(n,n);  
for i=n-1:-1:1
    s=0;
    for j=i+1:n
        s= s + a(i,j) * x(j);
    end
        x(i) = (a(i,n+1)-s)/a(i,i);  
end
end
for i=1:n
    fprintf('x%d is %f\n',i,x(i));
end