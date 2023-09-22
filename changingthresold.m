image_variable=imread('D:/z.jpg'); 
binary_image = im2bw(image_variable);

threshold_01=im2bw(image_variable, 0.1);
threshold_04 = im2bw(image_variable, 0.4); 
threshold_08 = im2bw(image_variable, 0.8); 

subplot(2,2,1), imshow(binary_image); title('Binray Image');
subplot(2,2,2), imshow(threshold_01); title('Threshold 0.1');
subplot(2,2,3), imshow(threshold_04); title('Threshold 0.4');

subplot(2,2,4), imshow(image_variable); title('original');
