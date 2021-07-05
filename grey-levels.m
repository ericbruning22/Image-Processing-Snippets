%get image and create variables for other images
a = imread('rose.jpg');
[m,n]= size(a);
b  = zeros(m,n);
c  = zeros(m,n);
d  = zeros(m,n);
e  = zeros(m,n);
f  = zeros(m,n);
g  = zeros(m,n);
h  = zeros(m,n);
i  = zeros(m,n);

%loop to change grey levels for each image
for y=1:m
    for x=1:n
     b(y,x) = a(y,x)/2;
     c(y,x) = a(y,x)/4;
     d(y,x) = a(y,x)/8;
     e(y,x) = a(y,x)/16;
     f(y,x) = a(y,x)/32;
     g(y,x) = a(y,x)/64;
     h(y,x) = a(y,x)/128;
     i(y,x) = a(y,x)/256;
    end
end

%write to graphical file
b = uint8(b);
c = uint8(c);
d = uint8(d);
e = uint8(e);
f = uint8(f);
g = uint8(g);
h = uint8(h);
i = uint8(i);
imwrite(b, 'rosegrey128.jpg');
imwrite(c, 'rosegrey64.jpg');
imwrite(d, 'rosegrey32.jpg');
imwrite(e, 'rosegrey16.jpg');
imwrite(f, 'rosegrey8.jpg');
imwrite(g, 'rosegrey4.jpg');
imwrite(h, 'rosegrey2.jpg');
imwrite(i, 'rosegrey1.jpg');

