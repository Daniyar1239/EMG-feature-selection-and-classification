function msr_feat = MeanValueOfTheSquareRoot(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

msr_feat = zeros(numwin, Nchannels);

st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    msr_feat(i,:) = real((1/length(cur_win)) * sum(cur_win.^(1/2)));
   
    st = st + wininc;
    en = en + wininc;
end
end