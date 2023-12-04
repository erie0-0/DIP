im=imread("C:\Users\Shruti\OneDrive\Desktop\DIP\Black and white image.jpg") 
im=rgb2gray(im) 
subplot(2,4,1) 
imshow(im) 
title("ORIGINAL IMAGE") 

im1=imnoise(im,'speckle') 
subplot(2,4,2) 
imshow(im1) 
//HIGHPASS FILTER 
title("IMAGE WITH SPECKLE NOISE") 

filter1 = fspecial('laplacian'); 
laplacian_filter = imfilter(im1, filter1 ); 
subplot(2,4,3); 
imshow(laplacian_filter) 
title("HIGHPASS-LAPLACIAN FILTER"); 

filter2 = fspecial('prewitt'); 
prewitt_filter = imfilter(im1, filter2); 
subplot(2,4,4); 
imshow(prewitt_filter) 
title("HIGHPASS-PREWITT FILTER"); 

 
filter3 = fspecial('sobel'); 
sobel_filter = imfilter(im1, filter3); 
subplot(2,4,5); 
imshow(sobel_filter) 
title("HIGHPASS-SOBEL FILTER"); 

 
//LOWPASS FILTER 
filter4 = fspecial('average'); 
average_filter = imfilter(im1, filter4); 
subplot(2,4,6); 
imshow(average_filter); 
title("LOWPASS-AVERAGE FILTER"); 

median_filter = immedian(im1,3); 
subplot(2,4,7); 
imshow(median_filter) 
title('LOWPASS-MEDIAN FITER ') 
