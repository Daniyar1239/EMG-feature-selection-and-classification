function mmav2_feat = ModifiedMeanAbsoluteValue2(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

mmav2_feat = zeros(numwin, Nchannels);

for j = 1:Nchannels
    st = 1;
    en = winsize;
  

    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        for k = 1:length(cur_win)
            if k >= 0.25 * length(cur_win)  &&  k <= 0.75 * length(cur_win)
                w = 1;
            elseif k < 0.25 * length(cur_win)
                w = (4*k)/length(cur_win);
            else
                w = 4 * (k - length(cur_win)) / length(cur_win);
            end
        mmav2_feat(i,j) = mmav2_feat(i,j) + (w*abs(cur_win(k)));
        end
        mmav2_feat(i,j) = (1/length(cur_win))*mmav2_feat(i,j);
        st = st + wininc;
        en = en + wininc;
    end
end
end