close all
clear
clc

%----------------------------------

I1 = double(rgb2gray(imread('1.png'))) > 150;
I2 = double(rgb2gray(imread('2.png'))) > 150;
I3 = double(rgb2gray(imread('3.png'))) > 150;

%----------------------------------
figure(1);
subplot(1,3,1);
imagesc(I1);
subplot(1,3,2);
imagesc(I2);
subplot(1,3,3);
imagesc(I3);

pause;

%----------------------------------

W = 0;

II1 = (I1(:)-0.5) * 2;
II2 = (I2(:)-0.5) * 2;
II3 = (I3(:)-0.5) * 2;

%----------------------------------

W = W + II1 * II1';
W = W + II2 * II2';
W = W + II3 * II3';

W = W/3;

%----------------------------------

figure(2);

I4 = I2;

I4(20,:) = 0;

subplot(1,2,1);
imagesc(I4);

II4 = (I4(:)-0.5) * 2;

%----------------------------------

O = II4;


for it = 1:100
    O = (((W*O)>0)-0.5) * 2;

    OO = O > 0;
    IO = reshape(OO,size(I1));

    subplot(1,2,2);
    imagesc(IO);
    pause(0.2);
    it
end