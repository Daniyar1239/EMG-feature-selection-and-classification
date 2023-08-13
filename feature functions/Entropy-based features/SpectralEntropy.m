function se_feat = SpectralEntropy(x, winsize, wininc, psd_length)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

se_feat = zeros(numwin, Nchannels);

for j = 1:Nchannels
    st = 1;
    en = winsize;

    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        p1 = pwelch(cur_win,[],[], psd_length)';
        p2 = p1/sum(p1);
        p3 = -sum(p2.*log2(p2))./log2(length(p2));
        se_feat(i,j) = p3./log2(psd_length); 
        st = st + wininc;
        en = en + wininc;
    end
end
end
