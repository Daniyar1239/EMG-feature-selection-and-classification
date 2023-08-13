function asm_feat = AbsoluteValueOfTheSummationOfExpRoot(x, winsize, wininc)

datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

asm_feat = zeros(numwin, Nchannels);


st = 1;
en = winsize;

for i = 1:numwin
    cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);
    for k = 1:length(cur_win)
         if k >= 0.25 * length(cur_win) && k <= 0.75 * length(cur_win)
             exp = 0.5;
         else
             exp = 0.75;
    end
    end
    asm_feat(i,:) = abs(sum(cur_win.^exp)/length(cur_win));

    st = st + wininc;
    en = en + wininc;
end
end