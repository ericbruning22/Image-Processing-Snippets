clc;
clear all; 
close all;

%get image
f = imread('wizardofoznoisesquare.pgm');
h = size(f,1);
w = size(f,2);
n = 1;
d = 10;
[x,y] = meshgrid(-floor(w/2):floor(w-1)/2, -floor(h/2):floor(h-1)/2);

%create butterworth filters
high = 1./(1.+(d./(x.^2+y.^2).^0.5).^(2*n));
low = 1 - 1./(1.+(d./(x.^2+y.^2).^0.5).^(2*n));
%compute filtered image
%high pass
F1 = fftshift(fft2(f));
F2 = F1.*high;
high_out = ifft2(F2);
high_out = uint8(real(high_out));

%low pass
G1 = fftshift(fft2(f));
G2 = G1.*low;
low_out = ifft2(G2);
low_out = uint8(real(low_out));

%display results
figure(1)
imshow(f);colormap gray
title('Original image','fontsize',14)
figure(2)
imshow(low_out), colormap gray
title('Butterworth Low pass','fontsize',14)
figure(3)
imshow(high_out), colormap gray
title('Butterworth High pass','fontsize',14)
