function Nwt_Grg_Frw_Int1(x,h,f,p)
format long
n=length(f)
for i=1:(length(f)-1)
    Df(i)=f(i+1)-f(i);
end
for i=1:(length(Df)-1)
    D2f(i)=Df(i+1)-Df(i);
end
for i=1:(length(D2f)-1)
    D3f(i)=D2f(i+1)-D2f(i);
end
for i=1:(length(D3f)-1)
    D4f(i)=D3f(i+1)-D3f(i);
end
for i=1:(length(D4f)-1)
    D5f(i)=D4f(i+1)-D4f(i);
end
    k=(p-x(1))/h;
    forward_interpolation=f(1)+k*Df(1)+k*(k-1)*d2f(1)*0.5+(k*(k-1)*(k-2)/6)*D3f(1)+(k*(k-1)*(k-2)*(k-3)*(1/24))*D4f(1)+(k*(k-1)*(k-2)*(k-3)*(k-4)*(1/120))*D5f(1)