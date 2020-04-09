%% Question 2
% load the image and convert it from binary to grayscale image
I = imread('texture2.gif');
=======
I = imread('texture1.gif');
>>>>>>> 6115a92268c70c9887ee05aadf1599e93d85fa12

sigma1=8;
theta=135; % 135 degree
F = 0.059;
sigma2=24;

% result of Gabor Filter
m = my_gabor(I, sigma1, theta, F);
=======
m = new_gabor(I, sigma1, theta, F);
>>>>>>> 6115a92268c70c9887ee05aadf1599e93d85fa12
figure(), mesh(m);
figure(), imshow(m, []);

% result of smooth
smooth = my_smooth(m, sigma2);
figure(), mesh(smooth);
figure(), imshow(smooth, []);

%% Question 1
% load the image and convert it from binary to grayscale image
I = imread('texture1.gif');
=======
%% Question 2
% load the image and convert it from binary to grayscale image
I = imread('texture2.gif');
>>>>>>> 6115a92268c70c9887ee05aadf1599e93d85fa12
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
=======
figure(), imshow(res);

% result of smooth
smooth = my_smooth(res, sigma);
figure(), mesh(abs(smooth));
figure(), imshow(abs(smooth));
>>>>>>> 6115a92268c70c9887ee05aadf1599e93d85fa12

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

%% Question 4
I = imread('d4d29.gif');
sigma1 = 24;
theta = -0.28*pi; % -50.5 degree
F = 0.6038;

res = my_gabor(I, sigma1, theta, F);
figure(), mesh(res);
figure(), imshow(res,[]);
=======
figure(), imshow(res);

%% Question 4
I = imread('d4d29.gif');
sigma1 = 8;
theta = -0.28*pi; % -50.5 degree
F = 0.2;

res = my_gabor(I, sigma1, theta, F);
figure(), mesh(res);
figure(), imshow(res);
>>>>>>> 6115a92268c70c9887ee05aadf1599e93d85fa12

sigma2 = 30;
smooth = my_smooth(res, sigma2);

figure(), mesh(smooth);
figure(), imshow(mat2gray(smooth));figure(), imshow(mat2gray(smooth));
=======
figure(), mesh(abs(smooth));
figure(), imshow(abs(smooth));
>>>>>>> 6115a92268c70c9887ee05aadf1599e93d85fa12
