image_variable=image('D:/q.jpg');

red_chanel=image_variable(:,:,1);
green_chanel=image_variable(:,:,2);
blue_chanel=image_variable(:,:,3);
subplot(2,2,1);imshow(image_variable);title('Original Image');
subplot(2,2,2);imshow(red_chanel);title('Red Chanel');
subplt(2,2,3);imshow(green_chanel);tiltel('Green Chanel');
subplot(2,2,4),imshow(blue_chanel);title('Blue Chanel');