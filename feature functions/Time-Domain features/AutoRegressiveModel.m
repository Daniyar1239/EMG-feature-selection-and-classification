function ar_feat = AutoRegressiveModel(x, order, winsize, wininc)

x = double(x);
datasize = size(x,1);
Nchannels = size(x,2);
numwin = floor((datasize - winsize)/wininc)+1;
datawin = ones(winsize, 1);   % rectangular window

ar_feat = zeros(numwin,Nchannels*order);

st = 1;
en = winsize;

for i = 1:numwin
   cur_win = x(st:en,:).*repmat(datawin,1,Nchannels);

   cur_xlpc = real(lpc(cur_win,order)');
   cur_xlpc = cur_xlpc(2:(order+1),:);
   ar_feat(i,:) = reshape(cur_xlpc,Nchannels*order,1)';
   
   st = st + wininc;
   en = en + wininc;
end

end