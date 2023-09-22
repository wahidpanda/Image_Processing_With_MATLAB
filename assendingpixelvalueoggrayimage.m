image_variable=imread('D:/newomage.jpg');
gray_image=rgb2gray(image_variable);
pixel_value=gray_image(5,3);
sprintf('The value of the pixel is %d',pixel_value)