
car_plate=imread('D:/BMW.jpg');
imshow(car_plate);
ocrResults   = ocr(car_plate); 
result  = insertObjectAnnotation(car_plate,'rectangle', ...
                   ocrResults.WordBoundingBoxes, ...
                   ocrResults.WordConfidences);