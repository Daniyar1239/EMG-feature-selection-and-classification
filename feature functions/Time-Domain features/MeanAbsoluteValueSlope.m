function mavs_feat = MeanAbsoluteValueSlope(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);

% allocate memory
mavs_feat = zeros(numwin,Nchannels);

st = 1;
en = winsize;

for i = 1:numwin-1
    cur_win = x(st:en,:).*repmat(datawin,1, Nchannels);
    cur_winSucc = x((st + wininc):(en + wininc),:).*repmat(datawin,1,Nchannels);
    mavs_feat(i,:) = (mean(abs(cur_winSucc))-mean(abs(cur_win)));

    st = st + wininc;
    en = en + wininc;
end
    mavs_feat(end,:) = mean(mavs_feat);
end