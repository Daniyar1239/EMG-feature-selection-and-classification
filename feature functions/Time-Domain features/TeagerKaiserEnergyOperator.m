function tkeo_feat = TeagerKaiserEnergyOperator(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

tkeo_feat = zeros(numwin, Nchannels);

for j = 1:Nchannels
    st = 1;
    en = winsize;

    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        for k = 2:length(cur_win)-1
            tkeo_feat(i,j) = (cur_win(k).^2) - cur_win(k-1)*cur_win(k+1);
        end
   
        st = st + wininc;
        en = en + wininc;
     end
end
end