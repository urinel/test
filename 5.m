clear all
close all
I = imread('Peppers.tiff');
I = double(I)/255;
subplot(2,1,1);
imshow(I);

k=4;
X = reshape(I, size(I,1)*size(I,2), 3);
[IDX,C]=kmeans(X,k);
for i=1:k
   X(IDX==i,1)=C(i,1); 
   X(IDX==i,2)=C(i,2); 
   X(IDX==i,3)=C(i,3); 
end
Ic=reshape(X,size(I,1),size(I,2),3);
subplot(2,1,2);
imshow(Ic);