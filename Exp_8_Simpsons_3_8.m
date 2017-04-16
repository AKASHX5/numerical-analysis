clc
clear all;
close all;

x=1:7;
n=length(x);
h=(x(n)-x(1))/(n-1)
f=[1 0.5 0.33 0.25 0.2 0.17 0.14];
d1=[]; d2=[];

for i=2:1:(length(x)-1) 
    for j=4:3:(length(x)-3)
        if j~=i
            d1=[d1 f(i)];
        elseif j==i
            d2=[d2 f(j)];
        end
    end
end

result=((3*h)/8)*((f(1)+f(n))+3*sum(d1)+2*sum(d2))

