n=1:500;
f=0.02;
zg=sqrt(0.5)*randn(1,500);
x=sin(2*pi*f*n);
r=x+zg;
plot(r);
ft=linspace(0,0.5,1000);
for i=1:1000

s=cos(2*pi*ft(i)*n);

d(i)=sum((r-s).^2);

end

min(d)


%[Vmin Imin]=min(d);
%fprintf('estimated freq is %f\n',ft(Imin));
