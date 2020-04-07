I = imread('texture1.gif');
sigma=8;
theta=0.75*pi; % 135 degree
F = 0.059;

[m,n] = size(I);

h1 = zeros(m,1);
h2 = zeros(n,1);

for j=1:m
   h1(j) = 1/(2*pi*sigma^2)*exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*cos(theta)); 
end

for j=1:m
   h2(j) = exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*sin(theta)); 
end

res = conv2(h1,h2,I,'same');

imshow(abs(res),[]);
