winsize = 256;
wininc_train = 128;
wininc_test = 64;

tic
for i = 1:length(idx)
    valid_idx = (idx == i);
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

    X_train_set = par_feat_extract(y_train, train_set_filt, winsize, wininc_train, selidx); % extracting a time-domain training feature vector
    X_val_set = par_feat_extract(y_train, valid_set_filt, winsize, wininc_test, selidx); % extracting a time-domain validation feature vector
    
    %Transition removal
    [X_train_set, y_train] = remove_transitions(X_train_set,y_train,8,8);

    %Normalization
    X_train = (X_train_set - mean(X_train_set))./std(X_train_set);
    X_val = (X_val_set - mean(X_train_set))./std(X_train_set);

    %Classification
    if j ~= 4
        X_train = X_train';
        Mdl = fitcecoc(X_train,y_train,'Coding','onevsall','Learners',templates{j},'ObservationsIn','columns', 'Options', options);
    else
        Mdl = fitcensemble(X_train,y_train,'Method','Bag','Learners',templates{j},'Options', options);
    end
    y_pred = predict(Mdl, X_val);
    cm = confusionmat(y_val,y_pred);
    index = find(all(~cm));
    cm(:,index)=[];
    cm(index,:)=[];
    cmt = cm';
    prec = precision(cmt);
    rec = recall(cmt);
    f1_score(i) = 2*prec*rec/(prec+rec);
    acc_score(i) = 1-length(find(y_pred~=y_val))/length(y_val);
    fprintf("Fold #%d: Accuracy=%.2f\n",i,acc_score(i))
    fprintf("Fold #%d: F1 score=%.2f\n",i,f1_score(i))
end
elapsedTime(j) = toc;