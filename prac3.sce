im = imread("C:\Users\Shruti\OneDrive\Desktop\DIP\image1.jpg")
img2 = imread("C:\Users\Shruti\OneDrive\Desktop\DIP\image2.jpg")

x =size(img1) 
y =size(img2) 
img1 =  imresize(img1, [557,1200]) 
z= size(im) 

//Addition
img3 = imadd(img1,img2)
imshow(img3)
//loop

M=x(1); 
N=x(2); 
newadded=zeros(M,N,3,'uint16'); 

for i=1:M 
    for j=1:N 
         for k=1:3 
            newadded(i,j,k)=double(img3(i,j,k))+double(img2(i,j,k)); 
             if(newadded(i,j,k)>255)then 
               newadded(i,j,k)=255; 
             end 
         end  
    end 
end 
subplot(2,2,1) 
imshow(uint8(newadded)) 

 
//subtraction
img4 = imsubtract(img1, img2)
imshow(img4)

//loop
[a,b,c]=size(img1);
result2=img1;
for i=1:c
    if(img1(:,:,i)-img2(:,:,i)<0) then
        result2(:,:,i)=0;
    else
        result2(:,:,i)=img1(:,:,i)-img2(:,:,i);
    end
end
subplot(3,2,6),imshow(result2),title("Subtraction of Image using loop");

//mean without function
im=imread("image1.jpg"); 
x=size(im) 
M=x(1); 
N=x(2); 
meanr_image=0; 
meanb_image=0; 
meang_image=0; 
for i=1:M 
    for j=1:N 
        meanr_image= meanr_image+ double(im(i,j,1));  
        meang_image= meang_image + double(im(i,j,2)); 
        meanb_image = meanb_image + double(im(i,j,3));  
    end 

end 
disp("RED MEAN IS-:",double(meanr_image)/(M*N)) 
disp("GREEN MEAN IS-:",double(meang_image)/(M*N)) 
disp("BLUE MEAN IS-:",double(meanb_image)/(M*N))

//mean by function
[a,b,c] = size(im)
im = double(im)
for i=1:c
    disp(mean(im(:, :, i)))
end
