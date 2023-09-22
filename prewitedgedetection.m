I = imread('D:/BMW.jpg');
G = rgb2gray(I);

F = edge(G, 'prewitt');

figure; imshow(I); title('Original Image');
figure; imshow(G); title('Gray Image');
figure; imshow(F); title('Detected Edges');