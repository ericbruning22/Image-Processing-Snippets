clc;
close all;
clear all;
f=imread('wizardofoznoisesquare.pgm');
% compute FFT of the grey image
A = fft2(double(f));
% frequency scaling
A1=fftshift(A); 
% Gaussian Filter Response Calculation
[M,N]=size(A); % image size
R=5; % filter radius parameter 
X=0:N-1;
Y=0:M-1;
[X,Y]=meshgrid(X,Y);
Cx=0.5*N;
Cy=0.5*M;
%create low pass filter
Lo=exp(-((X-Cx).^2+(Y-Cy).^2)./(2*R).^2);
%create high pass filter
Hi=1-Lo;
% compute filtered image
J=A1.*Lo;
J1=ifftshift(J);
B1=ifft2(J1);
K=A1.*Hi;
K1=ifftshift(K);
B2=ifft2(K1);
%display results
figure(1)
imshow(f);colormap gray
title('Original image','fontsize',14)
figure(2)
imshow(abs(B1),[12 290]), colormap gray
title('Gaussian Low pass','fontsize',14)
figure(3)
imshow(abs(B2),[12 290]), colormap gray
title('Gaussian High pass','fontsize',14)
