I = imread('texture1.gif');
I(I==1)=255;
figure(1);
imshow(I);
sigma=8;
theta=0.75*pi; % 135 degree
F = 0.059;

res = my_gabor(I, sigma, theta, F);

figure(2);
mesh(res);

sigma2 = 24;
smooth = my_smooth(I,sigma2,res);

figure(3);
mesh(abs(smooth));

%%
I = imread('texture2.gif');
I(I==1)=255;
figure(1);
imshow(I);
sigma=24;
theta=0*pi; % 0 degree
F = 0.042;

res = my_gabor(I, sigma, theta, F);

figure(2);
mesh(res);

sigma2 = 24;
smooth = my_smooth(I,sigma2,res);

figure(3);
mesh(abs(smooth));

%%