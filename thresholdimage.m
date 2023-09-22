i=imread('D:/c.jpg');
threshold_value=graythresh(i);
threshold_image=im2bw(i,threshold_value);
subplot(1,2,1),imshow (threshold_image);

subplot(1,2,2),imshow(i);