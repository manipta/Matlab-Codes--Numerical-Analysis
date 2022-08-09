clc
clear
n=3;
a=[3 2 -1;1 -3 2;2 -1 1];
C=[1; 2; 3];
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
        temp=C(i,:);
        C(i,:)=C(q,:);
        C(q,:)=temp;
    end
for j=i+1:n
m(j,i)=a(j,i)/a(i,i);
a(j,:)= a(j,:) - m(j,i)*a(i,:);
end
end
if a(n,n)==0
    disp('More than one solution exist');
else
U=a;
L=m;
for i=1:n
    L(i,i)=1;
end
y=inv(L)*C; %or we can use y=L\C;
x=inv(U)*y; %x=U\y;
end
for i=1:n
    fprintf('x%d is %f\n',i,x(i));
end   