image_var= imread('D:/c.jpg');
image_mul=immultiply(image_var,.25);
image_div=imdivide(image_var,9);
subplot(2,2,1),imshow(image_var);
subplot(2,2,2),imshow(image_mul);
subplot(2,2,3),imshow(image_div);