function zc_feat = ZeroCrossing(x, thres, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

zc_feat = zeros(numwin, Nchannels);

for j = 1:Nchannels
    st = 1;
    en = winsize;
    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        for k = 1:length(cur_win)-1
            if ((abs(cur_win(k)-cur_win(k+1))>= thres) && ((cur_win(k)*cur_win(k+1))<0))
                zc_feat(i,j) = zc_feat(i,j) + 1; 
            end
        end
        st = st + wininc;
        en = en + wininc;
    end
       
end
 
end
