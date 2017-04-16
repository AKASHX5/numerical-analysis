clc;
clear all;
format long;
% We will need two starting values. 
x0=0.1;
x1=0.2;
xtol=1e-5;  %Prescribed Accuracy 
iter=0;
f=@(x)(cos(x)-1.7*x);
while abs(x1-x0)> xtol  
      x2=x1-((f(x1)*(x0-x1))/(f(x0)-f(x1)));
      x0=x1;
      x1=x2;
      iter=iter+1;
end
root=x2
iter





