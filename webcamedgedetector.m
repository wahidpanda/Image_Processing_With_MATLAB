cam = webcam();
cam.Resolution = '1280x720';

h = figure;

while ishandle(h)
    I = snapshot(cam);
    G = rgb2gray(I);
    S = edge(G, 'sobel');
    R = edge(G, 'roberts');
    P = edge(G, 'prewitt');
    
    subplot(2,2,1); imshow(I); title('Original Image');
    subplot(2,2,2); imshow(S); title('Sobel Edges');
    subplot(2,2,3); imshow(R); title('Roberts Edges');
    subplot(2,2,4); imshow(P); title('Prewitt Edges');
    
    drawnow
end
