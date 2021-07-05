clc;
clear all;
close all;
%get image and create variables
f = imread('fourierspectrum.pgm');

%power transformation
c = .5;
g=5;
h = uint8(c.*((double(f)).^g));

%place output image to file
imwrite(h, "powertransform.pgm");

figure,imshow(f)
figure,imshow(h)
