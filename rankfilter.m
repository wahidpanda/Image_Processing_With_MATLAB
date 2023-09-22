I = imread('D:/z.jpg');
N = imnoise(I, 'salt & pepper', 0.3);

red_channel = N(:, :, 1);
green_channel = N(:, :, 2);
blue_channel = N(:, :, 3);

red_channel = ordfilt2(red_channel, 15, ones(5,5));
green_channel = ordfilt2(green_channel, 15, ones(5,5));
blue_channel = ordfilt2(blue_channel, 15, ones(5,5));

F = cat(3, red_channel, green_channel, blue_channel);

subplot(2, 1, 1);
imshow(N);
title('Noisy Image');

subplot(2, 1, 2);
imshow(F);
title('Image After Noise Removal');