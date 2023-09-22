image = imread('D:/c.jpg');
stretched_Image = imadjust(image, stretchlim(image, [0.05, 0.95]),[]);

subplot(2,2,1), imshow(image), title('Original Image');
subplot(2,2,2), imshow(stretched_Image), title('Strethced Image');
subplot(2,2,3), imhist(image), title('Histogram of Original Image');
subplot(2,2,4), imhist(stretched_Image), title('Histogram of Stretched Image');