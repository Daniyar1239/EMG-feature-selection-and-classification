function ShEn_feat = ShannonEntropy(x, winsize, wininc) 

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

ShEn_feat = zeros(numwin, Nchannels);


st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    ShEn_feat(i,:) = -sum(((cur_win.^2)./sum(cur_win.^2)).*log2(((cur_win.^2)./sum(cur_win.^2))))*(1/length(cur_win));
   
    st = st + wininc;
    en = en + wininc;
end
end