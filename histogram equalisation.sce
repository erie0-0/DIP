img = imread("C:\Users\CSLab\dip shruti\image1.jpg") 
img = rgb2gray(img) 

[count , cells] = imhist(img) 
title("BEFORE EQUALIZATION") 
subplot(2,2,1) 
plot2d3(cells, count) 

img2 = imhistequal(img) 
[count, cells] = imhist(img2) 
subplot(2,2,2) 
plot2d3(count, cells) 
title("AFTER EQUALIZATION") 

//without function
m=imread("C:\Users\simra\Downloads\IMG_0056.JPG")
m=rgb2gray(m);
[a b]=size(m);
frequency=zeros(1,256);
for i=1:a
    for j=1:b
    frequency(m(i,j))=frequency(m(i,j))+1;
    end
end

prob=zeros(1,256);

for i=(1:256);
    prob(i)=frequency(i)/(a*b);
end

cum_freq_prob=zeros(1,256);
cum_freq_prob=prob(1);

for i=2:256
    cum_freq_prob(i)=cum_freq_prob(i-1)+prob(i);
end
equalized=zeros(1,256);
for i=1:256
    equalized(i)=round(255*cum_freq_prob(i));
end
normalized=zeros(1,256)
i=1;
j=1;
disp(equalized)
while j<=256 && i<=256
    if equalized(i)==equalized(j) then
        normalized(equalized(i)+1)=normalized(equalized(i)+1)+frequency(j);
        j=j+1;
    else
        i=j;
    end
end
disp(normalized)
scf(3); bar(normalized)

scf(4); bar(frequency)
