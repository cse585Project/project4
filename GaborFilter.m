I = imread('texture1.gif');
I(I==1)=255;
figure();
imshow(I);
sigma=8;
theta=0.75*pi; % 135 degree
F = 0.059;

res = my_gabor(I, sigma, theta, F);

figure();
mesh(res);

figure();
imshow(res);

sigma2 = 24;
smooth = my_smooth(I,sigma2,res);

figure();
mesh(abs(smooth));

figure();
imshow(abs(smooth));

%%
I = imread('texture2.gif');
I(I==1)=255;
figure();
imshow(I);
sigma=24;
theta=0*pi; % 0 degree
F = 0.042;

res = my_gabor(I, sigma, theta, F);

figure();
mesh(res);
figure();
imshow(res);

sigma2 = 24;
smooth = my_smooth(I,sigma2,res);

figure();
mesh(abs(smooth));
figure();
imshow(abs(smooth));

%%
I = imread('d9d77.gif');
%I(I==1)=255;
figure();
imshow(I);
sigma=36;
theta=0.33*pi; % 60 degree
F = 0.063;

res = my_gabor(I, sigma, theta, F);

figure();
mesh(res);
figure();
imshow(res);

%%
I = imread('d4d29.gif');
%I(I==1)=255;
figure();
imshow(I);
sigma = 8;
theta = -0.28*pi; % -50.5 degree
F = 0.6038;

res = my_gabor(I, sigma, theta, F);

figure();
mesh(res);
figure();
imshow(res);

sigma2 = 40;
smooth = my_smooth(I,sigma2,res);

figure();
mesh(abs(smooth));
figure();
imshow(abs(smooth));