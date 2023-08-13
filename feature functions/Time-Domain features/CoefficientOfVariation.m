function cov_feat = CoefficientOfVariation(x, winsize, wininc)
datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

cov_feat = zeros(numwin, Nchannels);

for j = 1:Nchannels
    st = 1;
    en = winsize;

    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        cov_feat(i,j) = std(cur_win)/mean(cur_win);
   
    st = st + wininc;
    en = en + wininc;
    end
end
end