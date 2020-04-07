function res = my_gabor(I, sigma, theta, F)
%MY_GABOR Summary of this function goes here
%   Detailed explanation goes here
%   I -- input image
%   sigma, theta, F -- parameters
%   res -- output image
[m,n] = size(I);

h1 = zeros(m,1);
h2 = zeros(n,1);

for j=1:m
   h1(j) = 1/(2*pi*sigma^2)*exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*cos(theta)); 
end

for j=1:n
   h2(j) = exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*sin(theta)); 
end

res = conv2(I,h1);
res = conv2(res,h2.');
res = abs(res);% gabor
res = res(1:m,1:n);
end

