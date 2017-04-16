clear all;
clc;

a=[2 3 5 23; 3 4 1 14; 6 7 2 26];
n=3;
for k=1:1:n-1

%check maximum
max=abs(a(k,k))
p=k
for m=k+1:1:n
    if abs(a(m,k))>max
        max=abs(a(m,k))
        p=m
    end
end
%

%swap
if p~=k
    for q=k:1:n+1
        temp=a(k,q);
        a(k,q)=a(p,q);
        a(p,q)=temp;
    end
end
%   
%elimination
    for i=k+1:1:n
        u = a(i,k)/a(k,k);
        for j=k:1:n+1
            a(i,j)=a(i,j)-u*a(k,j);
        end
    end
end

%substitute
x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:1:n
        sum=sum+a(i,j)*x(j);
    end
        x(i)=(a(i,n+1)-sum)/a(i,i);
end

a
x