function smooth = my_smooth(res,sigma)
%MY_SMOOTH Summary of this function goes here
%   Detailed explanation goes here
%   res -- result of Gabor Filter
%   sigma -- parameter
[m,n] = size(res);
g1 = zeros(4*sigma+1,1);
g2 = zeros(1,4*sigma+1);
for j=-2*sigma:2*sigma
   g1(j+2*sigma+1) = 1/(2*pi*sigma^2)*exp(-j^2/(2*sigma^2));
end

for j=-2*sigma:2*sigma
   g2(j+2*sigma+1) = exp(-j^2/(2*sigma^2)); 
end
% G=zeros(4*sigma+1);
% for p=1:4*sigma+1
%     for q=1:4*sigma+1
%         G(p,q) = (1/(2*pi*sigma^2)) ...
%             * exp((-p^2-q^2)/(2*sigma^2));
%     end
% end
i_1 = zeros(size(res));
i_2 = zeros(size(res));
for p=2*sigma+1:m-2*sigma
    cur=0;
    for t=1:4*sigma+1
       cur = cur + res(t+p-2*sigma-1,:)*g1(t);
    end
    i_1(p,:) = cur;
end
for q=2*sigma+1:n-2*sigma
    cur = 0;
    for t=1:4*sigma+1
      cur = cur + i_1(:,t+q-2*sigma-1)*g2(t); 
    end
    i_2(:,q) = cur;
end

smooth = i_2;
end

