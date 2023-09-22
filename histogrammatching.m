i = imread('D:/c.jpg');
matching = 0:255;
ih = histeq(i,matching);

subplot(2,3,1), imshow(i), title('Original Image');
subplot(2,3,2), imshow(ih), title('Histogram Matched Image');
subplot(2,3,3), plot(matching), title('Plot of the Matching Value Range');
subplot(2,3,4), imhist(i), title('Histogram of Original Image');
subplot(2,3,5), imhist(ih), title('Histogram of Matched Image');