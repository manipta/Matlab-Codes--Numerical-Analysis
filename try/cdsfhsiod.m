%langrange single
clc;
clear all;
t=[0 8 16 24 32 40];
o=[14.621 11.843 9.870 8.418 7.305 6.413];
p=15;
n=length(t);
sum=0;
for i=1:n
l(i)=1;
for j=1:n
    if i~=j
        l(i)=l(i)*(p-t(j))/(t(i)-t(j));
    end
end
sum=sum+(l(i)*o(i));
end
p
sum