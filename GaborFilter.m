I = imread('texture1.gif');
I(I==1)=255;
sigma=8;
theta=0.75*pi; % 135 degree
F = 0.059;

[m,n] = size(I);

h1 = zeros(m,1);
h2 = zeros(n,1);

% h1(x)
for j=1:m
   h1(j) = 1/(2*pi*sigma^2)*exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*cos(theta)); 
end

% h2(y)
for j=1:m
   h2(j) = exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*sin(theta)); 
end

res = conv2(I,h1);
res = conv2(res,h2.');
res = abs(res);% gabor
res = res(1:512,1:512);
figure();
mesh(res);

sigma = 24;

g1 = zeros(m,1);
g2 = zeros(n,1);

for j=1:m
   g1(j) = 1/(2*pi*sigma^2)*exp(-j^2/(2*sigma^2));
end

for j=1:m
   g2(j) = exp(-j^2/(2*sigma^2)); 
end

smooth = conv2(res,g1);
smooth = conv2(smooth, g2.');
smooth = abs(smooth);
smooth = smooth(1:512,1:512);
figure();
mesh(abs(smooth));
