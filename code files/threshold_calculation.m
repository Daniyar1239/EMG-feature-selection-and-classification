function thres = threshold_calculation(y,x,R)
% y - labels
% x - data

y = find(y==0);
x = x(y,:);
Nchannels = size(x,2);
th = zeros(1,Nchannels);

for i = 1:Nchannels
    th(i) = R * sqrt((1/length(x)).*sum(x(:,i).^2));
    thres = mean(th);
end
   
end