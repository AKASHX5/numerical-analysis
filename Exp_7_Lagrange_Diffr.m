clc
clear all

% n=input('n');
% for i=1:n
%     x(i)=input('x=');
%     y(i)=input('y=');
% end

x=[0.05 0.1 0.2 0.26];
f=[0.05 0.0999 0.1987 0.2571];
n=length(x);

P=0;
syms xv;
for i=1:n
    y=1;
    for j=1:n
        if j~=i
            y=y*((xv-x(j))/(x(i)-x(j)));
        end
    end
    y=y*f(i);
    P=P+y;
end
Lagrange_Polynomial=P
Differentiation=diff(P)
P2=subs(Differentiation,xv,0.12)









