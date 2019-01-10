x=round(rand(1,1000));
A=1;
f=1/100;
n=linspace(1,100);
sine=A*sin(2*pi*f*n);
s=0;
for i=1:length(x)
    if x(i)==0
       s=[s sine];
    else
        s=[s -sine];
    end
    
end
s(1)=[];
plot(s(1:500));
v=(A/10)*randn(1,length(s));
r=v+s;
figure;
plot(r(1:500));
