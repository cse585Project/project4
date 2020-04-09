function [res] = my_gabor(I, sigma, theta, F)
%MY_GABOR Summary of this function goes here
%   Detailed explanation goes here
%   I -- input image
%   sigma, theta, F -- parameters
%   res -- output image
[m,n] = size(I);

h1 = zeros(4*sigma+1,1);
h2 = zeros(1,4*sigma+1);
% H = zeros(4*sigma+1,4*sigma+1);

for j=1:4*sigma+1
   h1(j) = 1/(2*pi*sigma^2)*exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*cos(theta)); 
end

for j=1:4*sigma+1
   h2(j) = exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*sin(theta)); 
end

% for p=1:4*sigma+1
%     for q=1:4*sigma+1
%         H(p,q) = 1/(2*pi*sigma^2)*exp((-p^2-q^2)/(2*sigma^2))*exp(1i*2*pi*F*(p*cos(theta)+q*sin(theta)));
%     end
% end

res = conv2(I,h1);
res = conv2(res,h2);
% res1 = conv2(I,H);
res = abs(res(1:m,1:n));
% res1 = abs(res1(1:m,1:n));
end

