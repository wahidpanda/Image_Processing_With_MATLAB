I = imread('D:/z.jpg');
 
Id = im2double(I);
 
output1 = 4*(((1+0.3).^(Id))-1);
output2 = 4*(((1+0.4).^(Id))-1);
output3 = 4*(((1+0.6).^(Id))-1);
 
subplot(2,2,1), imshow(I); title('Original Image');
subplot(2,2,2), imshow(output1); title('for 0.3');
subplot(2,2,3), imshow(output2); title('for 0.4');
subplot(2,2,4), imshow(output3); title('for 0.6');