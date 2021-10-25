%Manolo RAJAONAH code remind Mars 2020

%image1 = imread('image.jpg')
%imshow(image1);

%Ough transform
RGB = imread('image.jpg');
I  = rgb2gray(RGB);

BW = edge(I,'canny');

[H,T,R] = hough(BW,'RhoResolution',0.5,'ThetaResolution',0.5);

subplot(2,1,1);
imshow(RGB);
title('gantrycrane.png');
subplot(2,1,2);
imshow(imadjust(mat2gray(H)),'XData',T,'YData',R,...
      'InitialMagnification','fit');
title('Hough transform of gantrycrane.png');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(hot);
