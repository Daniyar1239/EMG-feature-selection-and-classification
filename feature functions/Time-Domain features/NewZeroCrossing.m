function nzc_feat = NewZeroCrossing(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

nzc_feat = zeros(numwin, Nchannels);

%Compute threshold
T = 4 * ((1/10) * sum(x(1 : 10)));

for j = 1:Nchannels
    st = 1;
    en = winsize;

    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        for k = 1:length(cur_win)-1
            if (cur_win(k) > T && cur_win(k+1) < T) || (cur_win(k) < T && cur_win(k+1) > T)
                nzc_feat(i,j) = nzc_feat(i,j) + 1;
            end
        end
   
    st = st + wininc;
    en = en + wininc;
    end
end
end