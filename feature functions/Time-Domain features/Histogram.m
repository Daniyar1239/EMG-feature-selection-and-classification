function hist_feat = Histogram(x, winsize, wininc, edges)
% for proper results, emg may need normalization
x=(x-repmat(mean(x),[size(x,1),1]))./repmat(std(x),[size(x,1),1]);
datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

hist_feat = zeros(numwin, Nchannels*size(edges,2));

st = 1;
en = winsize;
for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    F0 = histc(cur_win, edges);
    hist_feat(i,:) = F0(:)';
    st = st + wininc;
    en = en + wininc;
end
end