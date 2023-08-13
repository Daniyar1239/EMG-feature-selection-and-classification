function psd_feat = WelchPSD(x, winsize, wininc, psd_length)
 
datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

psd_halflength = (psd_length/2)+1;
len = Nchannels*psd_halflength;
psd_feat = zeros(numwin, len);
k = 1:psd_halflength:len;

for j = 1:length(k)
    st = 1;
    en = winsize;

    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        p1 = pwelch(cur_win,[],[], psd_length)';
        psd_feat(i,(j-1)*psd_halflength+1:j*psd_halflength) = p1; 
        st = st + wininc;
        en = en + wininc;
    end
end
end