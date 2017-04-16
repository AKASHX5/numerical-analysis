function Nwt_Grg_Bkw_Intrp(x,h,f,p)
format long
n=length(f);

for i=2:length(f)
    Df(i-1)=abs(f(i)-f(i-1));
end
for i=2:length(Df)
    D2f(i-1)=abs(Df(i)-Df(i-1));
end
for i=2:length(D2f)
    D3f(i-1)=abs(D2f(i)-D2f(i-1));
end
for i=2:length(D3f)
    D4f(i-1)=abs(D3f(i)-D3f(i-1));
end
for i=2:length(D4f)
    D5f(i-1)=abs(D4f(i)-D4f(i-1));
end

%--Newton-Gregory backward difference interpolation formula--%
k=(p-x(1))/h;
Backward_Interpolation=f(1)+k*Df(1)+((k*(k+1))/2)*D2f(1)+((k*(k+1)*(k+2))/6)*D3f(1)+((k*(k+1)*(k+2)*(k+3))/24)*D4f(1)+((k*(k+1)*(k+2)*(k+3)*(k+4))/120)*D5f(1)







    
    
    
    