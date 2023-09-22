I = imread('D:/c.jpg');
N=imnoise(I,'salt & pepper', 0.08);
imshow(N)