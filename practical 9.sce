img = imread("C:\Users\Shruti\OneDrive\Desktop\DIP\Black and white image.jpg")
img = rgb2gray(img)
subplot(3,3,1)
imshow(img)
title("Original Image")

f = mkfftfilter(img,"gauss", 0.1)
i1 = fft2(im2double(img))
subplot(3,3,2)
imshow(i1)
title("Fourier Transformation")

i2 = i1.*fftshift(f);
i3 = real(ifft(i2))
subplot(3,3,3)
imshow(i3)
title("Gaussian LOW PASS")

i4 = i1.*fftshift(1-f)
i5 = real(ifft(i4))
subplot(3,3,4)
imshow(i5)
title("Gaussian HIGH PASS")

f1 = mkfftfilter(img,"butterworth1", 0.1)

i6 = i1.*fftshift(f1);
i7 = real(ifft(i6))
subplot(3,3,5)
imshow(i7)
title("Butterworth LOW PASS")

i8 = i1.*fftshift(1-f1)
i9 = real(ifft(i8))
subplot(3,3,6)
imshow(i9)
title("Butterworth HIGH PASS")

f2 = mkfftfilter(img,"binary", 0.1)
i10 = i1.*fftshift(f2);
i11 = real(ifft(i10))
subplot(3,3,7)
imshow(i11)
title("Binary LOW PASS")

i12 = i1.*fftshift(1-f2)
i13 = real(ifft(i12))
subplot(3,3,8)
imshow(i13)
title("Binary HIGH PASS")
