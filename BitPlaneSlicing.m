clc;
clear all;
close all;
%get image and create variables
f = imread('monalisa.pgm');
[m,n] = size(f);
g = zeros(m,n,8);

%bit-plane slicing
for a = 1:8
    for i = 1:m
        for j = 1:n
            g(i,j,a) = bitget(f(i,j),a);    %get kth bit from each pixel 
        end
    end 
end

%display images
%original image
figure,imshow(uint8(f))

%8 bit planes
figure;                                                 
    subplot(3,3,1);imshow(g(:,:,1));
    title('1st Plane');
    subplot(3,3,2);imshow(g(:,:,2));
    title('2nd Plane');
    subplot(3,3,3);imshow(g(:,:,3));
    title('3rd Plane');
    subplot(3,3,4);imshow(g(:,:,4));
    title('4th Plane');
    subplot(3,3,5);imshow(g(:,:,5));
    title('5th Plane');
    subplot(3,3,6);imshow(g(:,:,6));
    title('6th Plane');
    subplot(3,3,7);imshow(g(:,:,7));
    title('7th Plane');
    subplot(3,3,8);imshow(g(:,:,8));
    title('8th Plane')
    
% reconstruct image from bit planes
    rec=g(:,:,1)+g(:,:,2)*2+g(:,:,3)*4+g(:,:,4)*8+g(:,:,5)*16+g(:,:,6)*32+g(:,:,7)*64+g(:,:,8)*128; 
    figure;imshow(uint8(rec));
