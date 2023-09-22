I = imread('D:/c.jpg');
G = rgb2gray(I);

F = edge(G, 'roberts');

figure; imshow(I); title('Original Image');
figure; imshow(G); title('Gray Image');
figure; imshow(F); title('Detected Edges');