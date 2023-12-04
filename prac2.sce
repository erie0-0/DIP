im = imread("C:\Users\Shruti\OneDrive\Desktop\DIP\colors.jpg")
temp=img;
subplot(3,2,1),imshow(img),title("Original Image");
[a,b,c]=size(img);
z=zeros(size(img)(1),size(img)(2));
for i=1:c
    img(:,:,i)=255-img(:,:,i);
end
subplot(3,2,2),imshow(img),title("Negative of the Image");

//flipping
img2=flipdim(temp, 2, 1);
subplot(3,2,3),imshow(img2),title("flipped Image");

//by loop
im=imread("C:\Users\CSLab\Documents\drape.jpg"); 
x=size(im); 
M=y(1) 
N=x(2); 
flip=zeros(M,N,3,'uint8'); 
for i=1:M 
    flip(:,i,:)= im(:,M-i+1,:) 
end 
imwrite(flip,"flipped.png");  
be=imread("flipped.png"); 
subplot(2,1,1); 
imshow(im); 
subplot(2,1,2) 
imshow(be) 

//thresholding
z=rgb2gray(temp);
g=zeros(size(z)(1),size(z)(2));
for i=1:size(z)(1)
    for j=1:size(z)(2)
        if(z(i,j)>120)
            g(i,j)=1;
        else
            g(i,j)=0;
        end
     end            
end
subplot(3,2,4),imshow(g),title("Thresholding");

//contrast stretching
b = imadjust(temp, [0 0.5], [0.5 1]);
subplot(3,2,5)
imshow(b)
title("contrast stretching");


