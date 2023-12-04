im = imread("C:\Users\Shruti\OneDrive\Desktop\DIP\colors.jpg")
subplot(2,2,1)
imshow(img)
//resize
img1 = imresize(img, 1)
subplot(2,2,2)
imshow(img1)
img2 = imresize(img, 5,"bilinear")
subplot(2,2,3)
imshow(img2)
img3 = imresize(img,[100,250],"bicubic")
subplot(2,2,4)
imshow(img3)

//gray scale 
img4 = rgb2gray(img)
imshow(img4)

//with loop
co=imread("drape.jpg") 
x=size(co); 
R= co(:,:,1); 
G= co(:,:,2);
B= co(:,:,3); 

M=x(1); 
N=x(2); 
grey=zeros(M,N,'uint8'); 

for i=1:M 
  for j=1:N  
  grey(i,j)= int(double(R(i,j))*0.299)+int(double(G(i,j))*0.587)+ int(double(B(i,j))*0.114); 
  end 
end  
imwrite(grey,"newgray.png") 
c=imread("newgray.png") 
imshow(c) 
//black and white
img5 = im2bw(img4,0.4)
imshow(img5)
//with loop 

co=imread("drape.jpg") 
x=size(co); 
R= co(:,:,1); 
G= co(:,:,2);  
B= co(:,:,3); 

M=x(1); 
N=x(2); 

grey=zeros(M,N,'uint8'); 
black=zeros(M,N,'uint8'); 

 
for i=1:M 
    for j=1:N 
        grey(i,j)= int(double(R(i,j))*0.299)+int(double(G(i,j))*0.587)+int(double(B(i,j))*0.114);     
     end 

end 

for i =1:M 
    for j=1:N 
        if(grey(i,j)>200)then 
            black(i,j)=255 
        else  
            black(i,j)=0 
        end 
     end    
end 
 
imwrite(black,"newblack.png"); 
be=imread("newblack.png"); 
imshow(be) 

//Profile
img6 = improfile(img)
imshow(img6)

//separate color image in R G & B planes
[r,c]=size(im); 
rim=zeros(r,c,3,'uint8'); 
bim=zeros(r,c,3,'uint8'); 
gim=zeros(r,c,3,'uint8'); 
rim(:,:,1)=im(:,:,1); 
gim(:,:,2)=im(:,:,2); 
bim(:,:,3)=im(:,:,3); 
figure; 
subplot(2,2,1) 
imshow(im) 
subplot(2,2,2) 
imshow(uint8(rim)) 
subplot(2,2,3) 
imshow(uint8(gim)) 
subplot(2,2,4) 
imshow(uint8(bim)) 

//concate 
im=imread("untitled.jpg"); 

[r,c]=size(im); 
rim=zeros(r,c,3,'uint8'); 
bim=zeros(r,c,3,'uint8'); 
gim=zeros(r,c,3,'uint8'); 
rim(:,:,1)=im(:,:,1); 
gim(:,:,2)=im(:,:,2); 
bim(:,:,3)=im(:,:,3); 
figure; 

subplot(2,3,1) 
imshow(im) 

subplot(2,3,2) 
imshow(uint8(rim)) 

subplot(2,3,3) 
imshow(uint8(gim)) 

subplot(2,3,4) 
imshow(uint8(bim)) 

im2=cat(3,rim(:,:,1),gim(:,:,2),bim(:,:,3)) 
subplot(2,3,5) 
imshow(uint8(im2))

//2D to image
im = im2uint8(im) .
imwrite(img, "filename.png")
