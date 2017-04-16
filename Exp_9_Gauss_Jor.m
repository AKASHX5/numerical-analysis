clear all;
clc;

a=[2 3 5 23; 3 4 1 14; 6 7 2 26];
n=3;
for k=1:1:n-1
    for i=k+1:1:n
        u = a(i,k)/a(k,k);
        for j=k:1:n+1
            a(i,j)=a(i,j)-u*a(k,j)
        end
    end
end

x(n)=a(n,n+1)/a(n,n)
for i=n-1:-1:1
    sum=0;
    for j=i+1:1:n
        sum=sum+a(i,j)*x(j)
    end
        x(i)=(a(i,n+1)-sum)/a(i,i)
end
