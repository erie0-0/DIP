im = imread("C:\Users\Shruti\OneDrive\Desktop\DIP\image1.jpg")
// ADDED SALT AND PEPPER NOISE 
img1 = imnoise(im, 'salt & pepper');
subplot(2,2,1)
imshow(img1);
title("SALT & PEPPER NOISE")

// ADDED GAUSSIAN NOISE
img2 = imnoise(im ,'gaussian')
subplot(2,2,2)
imshow(img2)
title("GAUSSIAN NOISE")


// REMOVE SALT AND PAPER NOISE 
f = fspecial('gaussian') 
img3 = imfilter(img2, f)
subplot(2,2,3)
imshow(img3)
title(" GAUSSIAN NOISE REMOVED")

img4 = immedian(img1 , 3)
subplot(2,2,4)
imshow(img4)
title("SALT & PEPPER NOISE REMOVED")
