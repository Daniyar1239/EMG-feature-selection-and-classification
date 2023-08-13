function avgpow_feat = AveragePower(x, winsize, wininc)

Fs = 2000; % Sampling rate
datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

avgpow_feat = zeros(numwin, Nchannels);

st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    avgpow_feat(i,:) = bandpower(cur_win,Fs, [15 500]);

    st = st + wininc;
    en = en + wininc;
end
end