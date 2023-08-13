function feat_class = get_class(x,label,index,winsize,wininc)

datasize = size(x,1);
index = [index;datasize];

feat_class = [];
for i = 1:wininc:(datasize - winsize + 1)
    motion_index = find((i + winsize/2) > index);
    motion_index = motion_index(length(motion_index));
    feat_class = [feat_class;label(motion_index)];
end   

end