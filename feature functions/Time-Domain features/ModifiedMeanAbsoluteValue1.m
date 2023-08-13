function mmav1_feat = ModifiedMeanAbsoluteValue1(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

mmav1_feat = zeros(numwin, Nchannels);

st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    for k = 1:length(cur_win)
        if k >= 0.25 * length(cur_win)  &&  i <= 0.75 * length(cur_win)
             w = 1;
        else
             w= 0.5;
        end
    end
    mmav1_feat(i,:) = (1/length(cur_win)) * sum(w*abs(cur_win));
    st = st + wininc;
    en = en + wininc;
end
end