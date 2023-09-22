I = imread('D:/c.jpg');
N=imnoise(I,'salt & pepper', 0.1);
mf=ones(3,3)/9;
NFI=imfilter(N,mf);
subplot(2,2,1), imshow(I), title('Original');  
subplot(2,2,2), imshow(N), title('Noise Image'); 
subplot(2,2,3), imshow(NFI), title('Remove Noise'); 