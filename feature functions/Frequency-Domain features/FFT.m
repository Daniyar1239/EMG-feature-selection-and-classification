function fft_feat = FFT(x, winsize, wininc, fft_length)
 
datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

fft_halflength = (fft_length/2)+1;
len = Nchannels*fft_halflength;
fft_feat = zeros(numwin, len);
k = 1:fft_halflength:len;

for j = 1:length(k)
    st = 1;
    en = winsize;

    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        p2 = abs(fft(cur_win, fft_length))';
        p1 = p2(1:fft_halflength);
        p1(2:end-1) = 2*p1(2:end-1);
        fft_feat(i,(j-1)*fft_halflength+1:j*fft_halflength) = p1;
        st = st + wininc;
        en = en + wininc;
    end
end
end