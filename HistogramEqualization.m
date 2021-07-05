clc;
clear all;
close all;
%get image and create variables
f = imread('monalisa.pgm');

%histogram equalization
figure
subplot(1,2,1)
imshow(f)
subplot(1,2,2)
imhist(f,64)

%contrast adjusted image
g = histeq(f);
figure
subplot(1,2,1)
imshow(g)
subplot(1,2,2)
imhist(g,64)

%calculate mean and standard deviation
fmean = sum(double(f(:)), 1) ./ numel(f)
gmean = sum(double(g(:)), 1) ./ numel(g)

fstd = std2(double(f))
gstd = std2(double(g))

