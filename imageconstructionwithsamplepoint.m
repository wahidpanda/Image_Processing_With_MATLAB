image_variable=imread('D:/c.jpg');
image_variable=rgb2gray(image_variable);
image_variable=double(image_variable);
[rows,columns]=size(image_variable);
zero_image=zeros(size(image_variable));
random_points=rand(rows.*columns,1)<0.9;
gaussian_filter=fspecial('gaussian',[10 5],2);
convolution=conv2(gaussian_filter,zero_image);
subplot(2,2,1),imagesc(image_variable);axis image;axis off;colormap(gray);title('Actual Image')
subplot(2,2,2),imagesc(zero_image);axis image;axis off;colormap(gray);title('Object points')
subplot(2,2,3),imagesc(convolution);axis image;axis off;colormap(gray);title('Reprsent LSI System')