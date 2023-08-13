function ssc_feat = SlopeSignChange(x, thres, winsize, wininc)

x = [zeros(1,size(x,2)); diff(x)];

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

ssc_feat = zeros(numwin, Nchannels);

for j = 1:Nchannels
    st = 1;
    en = winsize;
    for i = 1:numwin
        cur_win = x(st:en,j).*repmat(datawin,1);
        for k = 2:length(cur_win)-1
            if (((cur_win(k)>cur_win(k-1)) && (cur_win(k)>cur_win(k+1))) || ((cur_win(k)<cur_win(k-1)) && (cur_win(k)<cur_win(k+1)))) && (abs(cur_win(k)-cur_win(k-1))>= thres || abs(cur_win(k)-cur_win(k+1))>= thres)
                ssc_feat(i,j) = ssc_feat(i,j) + 1;
            end
        end
    st = st + wininc;
    en = en + wininc;
    end
end
end