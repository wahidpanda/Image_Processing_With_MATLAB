I = imread('D:/z.jpg');
N = imnoise(I, 'salt & pepper', 0.05);

red_channel = N(:, :, 1);
green_channel = N(:, :, 2);
blue_channel = N(:, :, 3);

the_Filter = fspecial('gaussian', [10 10], 4);

red_channel = imfilter(red_channel, the_Filter);
green_channel = imfilter(green_channel, the_Filter);
blue_channel = imfilter(blue_channel, the_Filter);

F = cat(3,red_channel, green_channel, blue_channel);

subplot(2, 2, 1);
imshow(I);
title('original Image');

subplot(2, 2, 2);
imshow(N);
title('noisy image');

subplot(2,2,3),imshow(F),title('Image After Noise Removal');


