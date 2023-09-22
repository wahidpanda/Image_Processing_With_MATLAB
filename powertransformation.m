I = imread('D:/c.jpg');
Id = im2double(I);

output1 = 2*(Id.^0.5);
output2 = 2*(Id.^7.5);
output3 = 2*(Id.^3.0);

subplot(2,2,1), imshow(I);title('oi');
subplot(2,2,2), imshow(output1);title('logarithm transfomation');
subplot(2,2,3), imshow(output2);title('exponential transformation');
subplot(2,2,4), imshow(output3);title('exponential');