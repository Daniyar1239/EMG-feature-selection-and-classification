function dasdv_feat = DifferenceAbsoluteStandardDeviationValue(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

dasdv_feat = zeros(numwin, Nchannels);


st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    dasdv_feat(i,:) = sqrt(sum(diff(cur_win).^2)/(length(cur_win)-1));
   
    st = st + wininc;
    en = en + wininc;
end
end