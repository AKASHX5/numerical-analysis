clc
clear all;
close all;

x=1:7;
n=length(x);
h=(x(n)-x(1))/(n-1)
f=[1 0.5 0.33 0.25 0.2 0.17 0.14];
d1=[]; d2=[];

for i=2:2:(length(x)-1) 
    d1=[d1 f(i)];
end
for j=3:2:(length(x)-1)
    d2=[d2 f(j)];
end

result=(h/3)*((f(1)+f(n))+4*sum(d1)+2*sum(d2))
