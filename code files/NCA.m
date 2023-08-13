winsize = 256;
wininc_train = 128;
wininc_test = 64;

numvalidsets = size(data,1);
labels = [data{1}(:,end); data{2}(:,end); data{3}(:,end); data{4}(:,end); data{5}(:,end); data{6}(:,end)];
n = length(labels);
lambdavals = linspace(0,20,20)/n;
lossvals = zeros(length(lambdavals),numvalidsets);

for i = 1:length(lambdavals)
    for k = 1:length(idx)
        valid_idx = (idx == k);
        train_idx = ~valid_idx;
        train_idx = find(train_idx~=0);
        valid_set = data{valid_idx};
        train_set = [data{train_idx(1)}; data{train_idx(2)}; data{train_idx(3)}; data{train_idx(4)}; data{train_idx(5)}];

        %Filtering
        train_set_filt = filt(train_set(:,1:end-1), Hd_butter.sosMatrix, Hd_butter.ScaleValues, Hd_notch.sosMatrix, Hd_notch.ScaleValues);
        train_set_filt = resample(train_set_filt,1000,Fs);

        valid_set_filt = filt(valid_set(:,1:end-1), Hd_butter.sosMatrix, Hd_butter.ScaleValues, Hd_notch.sosMatrix, Hd_notch.ScaleValues);
        valid_set_filt = resample(valid_set_filt,1000,Fs);

        %Feature extraction
        [index_train,labels_train] = get_labels_train(train_set(:,end));
        [index_val,labels_val] = get_labels_test(valid_set(:,end));
        index_train = round(index_train/2);
        index_train(1)=1;
        index_val = round(index_val/2);
        index_val(1)=1;
        y_train = get_class(train_set_filt, labels_train, index_train, winsize, wininc_train);
        y_val = get_class(valid_set_filt, labels_val, index_val, winsize, wininc_test);

        X_train_set = par_feat_extract(y_train, train_set_filt, winsize, wininc_train); % extracting a time-domain training feature vector
        X_val_set = par_feat_extract(y_train, valid_set_filt, winsize, wininc_test); % extracting a time-domain validation feature vector

        %Normalization
        X_train = (X_train_set - mean(X_train_set))./std(X_train_set);
        X_val = (X_val_set - mean(X_train_set))./std(X_train_set);

        nca = fscnca(X_train,y_train,'FitMethod','exact', ...
             'Solver','sgd','Lambda',lambdavals(i), ...
             'IterationLimit',30,'GradientTolerance',1e-4, ...
             'Standardize',false);
                  
        lossvals(i,k) = loss(nca,X_val,y_val,'LossFunction','classiferror');
    end
end