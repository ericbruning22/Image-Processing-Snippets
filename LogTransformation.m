clc;
clear all;
close all;
%get image and create variables
f = imread('fourierspectrum.pgm');

%log transformation
c = 25;
h = uint8(c.*log((double(1 + f))));

%place output image to file
imwrite(h, "logtransform.pgm");

figure,imshow(f)
figure,imshow(h)
