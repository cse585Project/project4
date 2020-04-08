%% Question 1
% load the image and convert it from binary to grayscale image
I = imread('texture1.gif');
I(I==1)=255;

sigma1=8;
theta=0.75*pi; % 135 degree
F = 0.059;
sigma2=24;

m = my_gabor(I, sigma1, theta, F);
figure(), mesh(m);
figure(), imshow(m);

smooth = my_smooth(m, sigma2);
figure(), mesh(smooth);
figure(), imshow(smooth);