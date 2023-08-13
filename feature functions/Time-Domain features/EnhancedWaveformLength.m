function ewl_feat = EnhancedWaveformLength(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

ewl_feat = zeros(numwin, Nchannels);

st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    for k = 2:length(cur_win)
        if k >= 0.2*length(cur_win) && k <= 0.8*length(cur_win)
            p = 0.75;
        else
            p = 0.5;
        end
    end
    ewl_feat(i,:) = sum(abs(diff(cur_win).^p));
   
    st = st + wininc;
    en = en + wininc;
end
end