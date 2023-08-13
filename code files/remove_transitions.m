function [data_out, class_out] = remove_transitions(data_in, class_in, before, after)

transition_index = diff([class_in(1);class_in]);
transition_index = find(transition_index ~= 0);
transition_index = [transition_index; length(class_in)];

N = length(transition_index);
Ndata = size(data_in,1);

data_out = [];
class_out = [];
for i = 1:(N-1)
    data_out = [data_out; data_in(min(transition_index(i)+after,Ndata):max(transition_index(i+1)-before,1),:)];
    class_out = [class_out; class_in(min(transition_index(i)+after,Ndata):max(transition_index(i+1)-before,1),:)];
end
