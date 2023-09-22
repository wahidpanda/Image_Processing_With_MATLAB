image_variable=imread('D:/c.jpg'); 
gray_image = rgb2gray(image_variable);

double_value=im2double(gray_image);
Output1=2*log(1+double_value);
Output2=2.5*log(1+double_value);
Output3=.3*log(1+double_value);

subplot(2,2,1), imshow(gray_image); title('Original Image');
subplot(2,2,2), imshow(Output1); title('Output Scaling Factor 2');
subplot(2,2,3), imshow(Output2); title('Output Scaling Factor 2.5');
subplot(2,2,4), imshow(Output3); title('Output Scaling Factor .3');