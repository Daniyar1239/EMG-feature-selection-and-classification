function tempmom_feat = TemporalMoment(x, order, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

tempmom_feat = zeros(numwin, Nchannels);

st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    tempmom_feat(i,:) = abs((1/length(cur_win)) * sum(cur_win.^order));
   
    st = st + wininc;
    en = en + wininc;
end
end