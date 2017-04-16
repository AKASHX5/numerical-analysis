%code for fixed point iteration
f=@(X)sin(X)-X^2;
X=5;
Es=.1;
Ea=100;
Xold=X;
n=0;
while Ea>Es
X=sqrt(sin(X));
Ea=abs((X-Xold)/X)*100;
Xold=X;
n=n+1;

end
root=X
n