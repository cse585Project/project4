%% Question 2
% load the image and convert it from binary to grayscale image
I = imread('texture2.gif');
I(I==1)=255;
sigma1=8;
theta=135; % 135 degree
F = 0.059;
sigma2=24;

% result of Gabor Filter
m = my_gabor(I, sigma1, theta, F);
figure(), mesh(m);
figure(), imshow(mat2gray(m));

% result of smooth
smooth = my_smooth(m, sigma2);
figure(), mesh(smooth);
figure(), imshow(mat2gray(smooth));

plot_contour(I,smooth,5);


%% Question 2
% load the image and convert it from binary to grayscale image
I = imread('texture1.gif');
I(I==1)=255;

sigma=24;
theta=0*pi; % 0 degree
F = 0.042;

% result of Gabor Filter 
res = my_gabor(I, sigma, theta, F);
figure(), mesh(res);
figure(), imshow(res,[]);

% result of smooth
smooth = my_smooth(res, sigma);
figure(), mesh(smooth);
figure(), imshow(mat2gray(smooth));

plot_contour(I,smooth,10);


%% Question 3
% load the image
I = imread('d9d77.gif');

sigma=36;
theta=0.33*pi; % 60 degree
F = 0.063;

% result of Gabor Filter 
res = my_gabor(I, sigma, theta, F);
figure(), mesh(res);
figure(), imshow(mat2gray(res));

plot_contour(I,res,1.3);


%% Question 4
I = imread('d4d29.gif');
sigma1 = 24;
theta = -0.28*pi; % -50.5 degree
F = 0.6038;
F = 0.1;

res = my_gabor(I, sigma1, theta, F);
figure(), mesh(res);
figure(), imshow(res,[]);

sigma2 = 24;
smooth = my_smooth(res, sigma2);

figure(), mesh(smooth);
figure(), imshow(mat2gray(smooth));

plot_contour(I,smooth,0.4);
