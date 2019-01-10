function p = myPDF(v,x,epsilon)

t=(v>(x-epsilon)).*(v<(x+epsilon));
p = sum(t)/numel(v)/(2*epsilon);
end

v=2+sqrt(2)*randn(1,10000);
n=linspace(-5,15,50);
epsilon=0.3;

for i=1:numel(n)
    x=n(i);
    r(i)=myPDF(v,x,epsilon);
 
end

plot(n,r);