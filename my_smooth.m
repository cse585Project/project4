function smooth = my_smooth(res,sigma)
%MY_SMOOTH Summary of this function goes here
%   Detailed explanation goes here
%   res -- result of Gabor Filter
%   sigma -- parameter
[m,n] = size(res);
g1 = zeros(4*sigma+1,1);
g2 = zeros(1,4*sigma+1);
for j=1:4*sigma+1
   g1(j) = 1/(2*pi*sigma^2)*exp(-j^2/(2*sigma^2));
end

for j=1:4*sigma+1
   g2(j) = exp(-j^2/(2*sigma^2)); 
end

smooth = conv2(res,g1);
smooth = conv2(smooth, g2);
% smooth = abs(smooth);
smooth = smooth(1:m,1:n);
end

