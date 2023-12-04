img1 = imread("C:\Users\Shruti\OneDrive\Desktop\DIP\image1.jpg")
img2 = imread("C:\Users\Shruti\OneDrive\Desktop\DIP\image2.jpg")

x =size(img1) 
y =size(img2) 

im =  imresize(img1, [557,1200]) 
z= size(im) 

img3 = bitand(im, img2) 

subplot(2,2,1) 

imshow(img3) 

title("AND") 

img4 =bitor(im, img2) 

subplot(2,2,2) 

imshow(img4) 

title("OR") 

img5 = ~(im) 

subplot(2,2,3) 

imshow(img5) 

title("NOT") 

subplot(2,2,4) 

img6 = bitand(im, img2) 

imshow(img6) 

title("INTERSECTION") 
