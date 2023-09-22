color_image=imread('D:/z.jpg');
red_value=color_image(5,3,1);
green_value=color_image(5,8,2);
blue_value=color_image(5,8,3);
sprintf('Value of red,green,blue pixel is %d,%d,%d',red_value,green_value,blue_value)