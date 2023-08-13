function [index_test,labels_test] = get_labels_test(y)

p = zeros(98,1);
p(1)=1;
k = table2array(readtable("labels_test.xlsx"));

for i = 2:98
    p(i) = find(y == k(i-1), 1) + p(i-1) - 1;
    y = y(p(i)-p(i-1)+1:end);
    
end

index_test= p;
k = [0; k];
labels_test= k;

end