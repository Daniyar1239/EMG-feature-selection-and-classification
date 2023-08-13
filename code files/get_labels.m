function [index,labels] = get_labels(y)

n = zeros(588,1);
n(1)=1;
m = table2array(readtable("labels_all6rep.xlsx"));

for i = 2:588
    n(i) = find(y == m(i-1), 1) + n(i-1) - 1;
    y = y(n(i)-n(i-1)+1:end);
end

index= n;
m = [0; m];
labels = m;
end