original_image=imread('D:/newomage.jpg');
gray_image=rgb2gray(original_image);
subplot(2,1,1);imshow(original_image);
subplot(2,1,2);imshow(gray_image);