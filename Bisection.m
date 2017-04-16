%code for bisection method
clc;
clear;
f=@(x)( x^2-6);
e1=-6;
e2=0;
acc=0.0001;
n=(e1+e2)/2;
i=0;
while abs (e1-e2)/2>acc
    i=i+1;
    if (f(n)*f(e2))<0
        e1=n;
    else e2=n;
    end
    n=(e1+e2)/2;
end

fprintf('root=%f',n);