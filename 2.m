A=5;
v=round(rand(1,100000));
x=A*v;
z=randn(1,100000);
y=x+z;
T=A/2;

xr = (y > (A / 2));

cr = 0;
fa = 0;
mi = 0;
cd = 0;

for i = 1 : numel(y)
    
    if(x(i) == 0 && xr(i) == 0)
        cr = cr + 1;
    
    elseif(x(i) == 0 && xr(i) == 1)
        fa = fa + 1;
        
    elseif(x(i) == 1 && xr(i) == 0)
        mi = mi + 1;
        
    else
        cd = cd + 1;
    end    
    
end

fprintf('Correct rejections = %g\n' , cr);
fprintf('Correct rejection probability = %g\n' , cr / length(x));

fprintf('False alarms = %g\n' , fa);
fprintf('False alarm probability = %g\n' , fa / length(x));

fprintf('Misses = %g\n' , mi);
fprintf('Miss probability = %g\n' , mi / length(x));

fprintf('Correct detections = %g\n' , cd);
fprintf('Correct detection probability = %g\n' , cd / length(x));



