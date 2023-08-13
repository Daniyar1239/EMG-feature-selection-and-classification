function medfreq_feat = MedianFrequency(x, winsize, wininc)

Fs = 2000; % Fs = 1000 after filtering
datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

medfreq_feat = zeros(numwin, Nchannels);

st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    medfreq_feat(i,:) = medfreq(cur_win,Fs);

    st = st + wininc;
    en = en + wininc;
end
end