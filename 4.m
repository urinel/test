function [class]=myknn(image,k)
load trainset.mat
ts=trainset;
for i=1:size(ts,3)
    
    d(i)=sum(sum((image-ts(:,:,i)).^2));
    
    
end

    
    [D, ID] = sort(d);
    
    
        
end