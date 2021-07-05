%1024 original image
a = imread('rose.jpg');

%downsampling
%512 image
b1 = imresize(a,[512,512]);
b1 = uint8(b1);
imwrite(b1, 'downrose512.jpg');

%256 image
c1 = imresize(a, [256,256]);
c1 = uint8(c1);
imwrite(c1, 'downrose256.jpg');

%128 image
d1 = imresize(a, [128,128]);
d1 = uint8(d1);
imwrite(d1, 'downrose128.jpg');

%64 image
e1 = imresize(a, [64,64]);
e1 = uint8(e1);
imwrite(e1, 'downrose64.jpg');

%upsampling
%512 image
b2 = imresize(b1,[1024,1024]);
b2 = uint8(b2);
imwrite(b2, 'uprose512.jpg');

%256 image
c2 = imresize(c1,[1024,1024]);
c2 = uint8(c2);
imwrite(c2, 'uprose256.jpg');

%128 image
d2 = imresize(d1,[1024,1024]);
d2 = uint8(d2);
imwrite(d2, 'uprose128.jpg');

%64 image
e2 = imresize(e1,[1024,1024]);
e2 = uint8(e2);
imwrite(e2, 'uprose64.jpg');
