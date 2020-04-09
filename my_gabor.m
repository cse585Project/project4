function res = my_gabor(I, sigma, theta, F)
%MY_GABOR Summary of this function goes here
%   Detailed explanation goes here
%   I -- input image
%   sigma, theta, F -- parameters
%   res -- output image
[m,n] = size(I);
I = double(I);
H = zeros(4*sigma+1,4*sigma+1);
% h1 = zeros(4*sigma+1,1);
% h2 = zeros(4*sigma+1,1);
% for j=-2*sigma:2*sigma
%    h1(j+2*sigma+1) = 1/sqrt(2*pi*sigma^2)*exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*cos(theta)); 
% end
% 
% for j=-2*sigma:2*sigma
%    h2(j+2*sigma+1) = 1/sqrt(2*pi*sigma^2)*exp(-j^2/(2*sigma^2))*exp(1i*2*pi*F*j*sin(theta)); 
% end
% 
% i_1 = zeros(size(I));
% i_2 = zeros(size(I));
% for p=2*sigma+1:m-2*sigma
%     cur=0;
%     for t=1:4*sigma+1
%        cur = cur + I(t+p-2*sigma-1,:)*h1(t);
%     end
%     i_1(p,:) = cur;
% end
% for q=2*sigma+1:n-2*sigma
%     cur = 0;
%     for t=1:4*sigma+1
%       cur = cur + i_1(:,t+q-2*sigma-1)*h2(t); 
%     end
%     i_2(:,q) = cur;
% end
for p=-2*sigma:2*sigma
    for q=-2*sigma:2*sigma
        H(p+2*sigma+1,q+2*sigma+1) = (1/(2*pi*sigma^2)) ...
            * exp((-p^2-q^2)/(2*sigma^2)) ...
            * exp(1i*2*pi*F*(p*cos(theta)+q*sin(theta)));
    end
end

res = conv2(I,H,'same');

res = abs(res);
end

