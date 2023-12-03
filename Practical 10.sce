img = imread("C:\Users\Shruti\OneDrive\Desktop\DIP\Black and white image.jpg");
im = rgb2gray(img);
subplot(2,2,1)
imshow(im)
title("ORIGINAL IMAGE")

E = edge(im, 'sobel', 0.5);
subplot(2,2,2)
imshow(E);
title("EDGE DETECTION using SOBEL FILTER")

E = edge(im, 'canny', [0.06, 0.2]);
subplot(2,2,3)
imshow(E);
title("EDGE DETECTION using CANNY FILTER")

E = edge(im, 'prewitt');
subplot(2,2,4)
imshow(E);
title("EDGE DETECTION using PREWITT FILTER")

