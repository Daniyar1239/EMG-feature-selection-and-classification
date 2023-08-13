function peakfreq_feat = PeakFrequency(x, winsize, wininc, Fs)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

peakfreq_feat = zeros(numwin, Nchannels);

st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    sFE = signalFrequencyFeatureExtractor(SampleRate = Fs, PeakAmplitude = true);
    peakfreq_feat(i,:) = extract(sFE, cur_win);

    st = st + wininc;
    en = en + wininc;
end
end