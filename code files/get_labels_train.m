function [index_train,labels_train] = get_labels_train(y)

n = zeros(490,1);
n(1)=1;
m = table2array(readtable("labels_train.xlsx"));

for i = 2:490
    n(i) = find(y == m(i-1), 1) + n(i-1) - 1;
    y = y(n(i)-n(i-1)+1:end);
end


index_train=n;
m = [0; m];
labels_train=m;
end