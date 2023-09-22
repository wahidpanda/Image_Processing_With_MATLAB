image_variable=imread('D:/c.jpg');
adding_50=imadd(image_variable,50);
adding_100=imadd(image_variable,100);
adding_500=imadd(image_variable,500);
subplot(2,2,1),imshow(image_variable);title('Original');
subplot(2,2,2),imshow(adding_50);title('Add 50');
subplot(2,2,3),imshow(adding_100);title('Add 1000');
subplot(2,2,4),imshow(adding_500);title('Add 500');