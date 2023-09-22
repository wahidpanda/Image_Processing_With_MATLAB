imv1=imread('D:/f.jpg');
imv2=imread('D:/e.jpg');
subtract_image=imv1-imv2;
subplot(1,3,1),imshow(imv1);
subplot(1,3,2),imshow(imv2);
subplot(1,3,3),imshow(subtract_image);