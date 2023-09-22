i=imread('D:/c.jpg');
Thsv= rgb2hsv(i);
Ih=histeq(Thsv(:,:,3));
Thsv(:,:,3)=Ih;
Io=hsv2rgb(Ihsv);
subplot(1,2,1),imshow(i);
subplot(1,2,2),imshow(Ihsv);