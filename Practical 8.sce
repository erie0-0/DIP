im=imread("C:\Users\Shruti\OneDrive\Desktop\DIP\colors.jpg");
subplot(4,4,1),imshow(im),title("original image");

img1=imnoise(im,"salt and pepper");
subplot(4,4,2),imshow(img1)

title("image with salt and pepper noise");
img2=imnoise(im,"gaussian");
subplot(4,4,3)
imshow(img3)
title("image with gaussian noise");

//LOW-PASS FILTERING
f1=fspecial("average");
imf1=imfilter(img1,f1);
subplot(4,4,4),imshow(imf1)
title("image with sp noise after filtering with af");
imf2=imfilter(img2,f1);
subplot(4,4,5),imshow(imf2)
title("image with g-noise after filtering with af");

f2=fspecial("gaussian",[30,30],3);
imf3=imfilter(img1,f2);
subplot(4,4,6)
imshow(imf3)
title("image with sp noise after filtering with gf");
imf4 =imfilter(temp2,f);
subplot(4,4,7),imshow(imf)
title("image with g-noise after filtering with gf");
