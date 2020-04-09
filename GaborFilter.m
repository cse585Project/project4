I = imread('texture2.gif');
I(I==1)=255;
figure();
imshow(I);
sigma=8;
theta=0.75*pi; % 135 degree
F = 0.059;

res = my_gabor(I, sigma, theta, F);

figure();
mesh(res)

figure();
imshow(res,[]);

sigma2 = 24;
smooth = my_smooth(res,sigma2);

figure();
mesh(smooth);

figure();
imshow(smooth);

%%
I = imread('texture1.gif');
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
imshow(mat2gray(res));

sigma2 = 24;
smooth = my_smooth(res,sigma2);

figure();
mesh(smooth);
figure();
imshow(mat2gray(smooth));

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
