function feat_TD = par_feat_extract(y, x, winsize, wininc, selidx)

addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone'
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\feature functions\Time-Domain features'

delete(gcp('nocreate'));
parpool("local",8);
Nchannels = size(x,2);
datasize = size(x,1);
numwin = floor((datasize - winsize)/wininc)+1;
edges = -2:2;

len = length(find(selidx<=40));
feat_TD_40 = zeros(numwin*len, Nchannels);
feat_TD_40_reshaped = zeros(numwin, Nchannels*len);

parfor i = 1:Nchannels  % for 40 TD features
    feat_TD_40(:,i) = extract_TD_features(y, x(:,i),winsize,wininc, selidx);
end

for i = 1:len  % Concatenating 40 TD features into a matrix with rows for windows, and columns for features
    feat_TD_40_reshaped(1:numwin, (i-1)*Nchannels+1:i*Nchannels) = feat_TD_40((i-1)*numwin+1:i*numwin,:);  
end

feat_TD = feat_TD_40_reshaped;

if any(ismember(selidx,41))
    hist_feat = Histogram(x, winsize, wininc, edges);   
    hist_feat(:, all(~hist_feat,1)) = [];
    feat_TD = horzcat(feat_TD, hist_feat);
end

if any(ismember(selidx,42))
    AR4_feat = AutoRegressiveModel(x, 4, winsize, wininc);   
    feat_TD = horzcat(feat_TD, AR4_feat);
end

if any(ismember(selidx,43))
    AR5_feat = AutoRegressiveModel(x, 5, winsize, wininc);   
    feat_TD = horzcat(feat_TD, AR5_feat);
end

if any(ismember(selidx,44))
    AR6_feat = AutoRegressiveModel(x, 6, winsize, wininc);   
    feat_TD = horzcat(feat_TD, AR6_feat);
end


%feat_TD = feat_TD_40_reshaped;
%feat_TD = [feat_TD_40_reshaped AR4_feat AR6_feat];
%feat_TD = [feat_TD_40_reshaped hist_feat AR4_feat AR5_feat AR6_feat];

end


