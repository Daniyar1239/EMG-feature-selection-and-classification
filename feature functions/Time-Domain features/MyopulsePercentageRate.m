function myop_feat = MyopulsePercentageRate(x, thres, winsize, wininc)
% default thresold = 0.016;
datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

myop_feat = zeros(numwin, Nchannels);

for j = 1:Nchannels
    st = 1;
    en = winsize;

    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        for k = 1:length(cur_win)
            if abs(cur_win(k)) >= thres
                myop_feat(i,j) = myop_feat(i,j) + 1;
            end
        end
        myop_feat(i,j) = myop_feat(i,j)./length(cur_win);
    st = st + wininc;
    en = en + wininc;
    end
end
end