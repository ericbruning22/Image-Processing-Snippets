clc;
clear all;
close all;
%get image and create variables
f = imread('banker.jpeg');
[m,n] = size(f);
g = zeros(m,n);

%gray-level slicing
t = 65;
for i = 1:m
    for j = 1:n
        % use the condition 
        if f(i,j) >= t  % try with defferent intensity levels in the range from 227 to 245 for better understanding
            g(i,j) = 255;
        else
            g(i,j) = 0;
        end
    end
end

%place output image to file
imwrite(g, "graylevelslicicing.jpeg");

%display images
figure,imshow(f)
figure,imshow(g)
