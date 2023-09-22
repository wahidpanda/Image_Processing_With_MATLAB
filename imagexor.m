image_variable1  = imread('D:/c.jpg');
image_variable2 = imread('D:/c.jpg');

binary1 = im2bw(image_variable1);
binary2 = im2bw(image_variable2);

output = xor(binary1, binary2);

subplot(3,2,1), imshow(image_variable1); title('First Image');
subplot(3,2,2), imshow(image_variable2); title('Second Image');
subplot(3,2,3), imshow(binary1); title('First Binary Image');
subplot(3,2,4), imshow(binary2); title('Second Binary Image');
subplot(3,2,5), imshow(output); title('Output');
