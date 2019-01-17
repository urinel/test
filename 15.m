function y = mysys1(x)

    y(1) = (1/4)*x(1);
    
    y(2) = (1/4)*x(2) - (1/2)*x(1);
    
for i=3:numel(x)
    
    y(i) = (1/4)*x(i) - (1/2)*x(i-1) + (1/4)*x(i-2);
    
end

end



clear all
close all

x = randn(1, 1000);
y = randn(1, 1000);

a = randn(1);
b = randn(1);

y_ax = mysys1(a*x);

y_by = mysys1(b*y);

y_ax_by = mysys1(a*x + b*y);

sum_axby = y_ax + y_by;

sum_axby = round((sum_axby)*1000)/1000;
y_ax_by = round(y_ax_by*1000)/1000;
    
if(all(y_ax_by == sum_axby))
    fprintf('system is linear\n')
else
    fprintf('system is not linear\n')
end

