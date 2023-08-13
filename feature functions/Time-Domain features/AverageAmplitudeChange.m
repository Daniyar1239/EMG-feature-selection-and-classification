function aac_feat = AverageAmplitudeChange(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

aac_feat = zeros(numwin, Nchannels);

st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    aac_feat(i,:) = sum(abs(diff(cur_win)))/length(cur_win);
        
    st = st+wininc;
    en = en+wininc;
end
end