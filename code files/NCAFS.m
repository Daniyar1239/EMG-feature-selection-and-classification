addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA'
subjects_weights = cell(10,1);
for i = 1:10
    subjects_weights{i} = load(sprintf('Feature weights_s%d.mat', i)).FW;
end
%%
winsize = 256;
wininc_train = 128;
%wininc_test = 64;

%addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\subjects'
load_data

for i = 1:2
    subject_name_data = sprintf('s%d_data', i);
    subject_data = eval(subject_name_data);

    subject_name_labels = sprintf('s%d_labels', i);
    subject_labels = eval(subject_name_labels);
    [session_1,session_2,session_3,session_4,session_5,session_6] = session_splitting_orig(subject_data, subject_labels);

    %Data creation
    data = [session_1(:,1:12); session_2(:,1:12); session_3(:,1:12); session_4(:,1:12); session_5(:,1:12); session_6(:,1:12)];
    labels = [session_1(:,13); session_2(:,13); session_3(:,13); session_4(:,13); session_5(:,13); session_6(:,13)];

    %Filtering
    addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\filter design'
    Fs = 2000;
    Hd_butter = buttfilt(8);
    Hd_notch = notch(4);
    data_filt = filt(data, Hd_butter.sosMatrix, Hd_butter.ScaleValues, Hd_notch.sosMatrix, Hd_notch.ScaleValues);
    data_filt = resample(data_filt,1000,Fs);
    [index,labels] = get_labels(labels);
    index = round(index/2);
    index(1)=1;

    %Feature extraction
    addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\feature functions\Time-Domain features'
    y = get_class(data_filt, labels, index, winsize, wininc_train);
    selidx = (1:44)';
    X = par_feat_extract(y, data_filt, winsize, wininc_train, selidx);

    %Normalization
    X = (X - mean(X))./std(X);

    % Splitting signals by channels (1-12)
    % 1st channel
    channel_1 = one_channel(X,1);
    % 2nd channel
    channel_2 = one_channel(X,2);
    % 3rd channel
    channel_3 = one_channel(X,3);
    % 4th channel
    channel_4 = one_channel(X,4);
    % 5th channel
    channel_5 = one_channel(X,5);
    % 6th channel
    channel_6 = one_channel(X,6);
    % 7th channel
    channel_7 = one_channel(X,7);
    % 8th channel
    channel_8 = one_channel(X,8);
    % 9th channel
    channel_9= one_channel(X,9);
    % 10th channel
    channel_10 = one_channel(X,10);
    % 11th channel
    channel_11 = one_channel(X,11);
    % 12th channel
    channel_12 = one_channel(X,12);
    
    addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA'
    lossvals = load(sprintf('Loss values of NCA_s%d.mat',i)).lossvals;
    meanloss = mean(lossvals,2);
    [~,idx] = min(meanloss); % Find the index
    lambdavals = linspace(0,20,20)/length(labels);
    bestlambda = lambdavals(idx); % Outputing the best lambda

    %NCA model training
    nca_1 = fscnca(channel_1, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 2nd channel
    nca_2 = fscnca(channel_2, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 3rd channel
    nca_3 = fscnca(channel_3, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 4th channel
    nca_4 = fscnca(channel_4, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 5th channel
    nca_5 = fscnca(channel_5, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 6th channel
    nca_6 = fscnca(channel_6, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 7th channel
    nca_7 = fscnca(channel_7, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 8th channel
    nca_8 = fscnca(channel_8, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 9th channel
    nca_9 = fscnca(channel_9, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 10th channel
    nca_10 = fscnca(channel_10, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 11th channel
    nca_11 = fscnca(channel_11, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);
    % 12th channel
    nca_12 = fscnca(channel_12, y, 'FitMethod', 'exact', 'Solver', 'sgd',...
        'Lambda', bestlambda, 'Standardize', false);

    FW_1 = nca_1.FeatureWeights;
    FW_2 = nca_2.FeatureWeights;
    FW_3 = nca_3.FeatureWeights;
    FW_4 = nca_4.FeatureWeights;
    FW_5 = nca_5.FeatureWeights;
    FW_6 = nca_6.FeatureWeights;
    FW_7 = nca_7.FeatureWeights;
    FW_8 = nca_8.FeatureWeights;
    FW_9 = nca_9.FeatureWeights;
    FW_10 = nca_10.FeatureWeights;
    FW_11 = nca_11.FeatureWeights;
    FW_12 = nca_12.FeatureWeights;
    FW = [FW_1 FW_2 FW_3 FW_4 FW_5 FW_6 FW_7 FW_8 FW_8 FW_10 FW_11 FW_12];

    save(sprintf('s%d_NCA_weights.mat', i), 'FW');
end
%% 
load_data

data = cell(6,1);
 
idx = [1 2 3 4 5 6];
acc_score = zeros(length(idx),1);
f1_score = zeros(length(idx),1);
t_EL = templateTree("MinLeafSize",10,"MaxNumSplits",300,'SplitCriterion', 'deviance');
options = statset('UseParallel',true);

winsize = 256;
wininc_train = 128;
wininc_test = 64;

subject_accuracies = zeros(10,1);
subject_f1 = zeros(10,1);

for j = 1:10
    subject_name_data = sprintf('s%d_data', j);
    subject_data = eval(subject_name_data);

    subject_name_labels = sprintf('s%d_labels', j);
    subject_labels = eval(subject_name_labels);

    [session_1,session_2,session_3,session_4,session_5,session_6] = session_splitting_orig(subject_data, subject_labels);
    
    FW = subjects_weights{j,1};
    [~,selidx] = sort(FW, 'descend');
    selidx = selidx(1:5);

    data{1} = session_1;
    data{2} = session_2;
    data{3} = session_3;
    data{4} = session_4;
    data{5} = session_5;
    data{6} = session_6;

    for i = 1:length(idx)
        valid_idx = (idx == i);
        train_idx = ~valid_idx;
        train_idx = find(train_idx~=0);
        valid_set = data{valid_idx};
        train_set = [data{train_idx(1)}; data{train_idx(2)}; data{train_idx(3)}; data{train_idx(4)}; data{train_idx(5)}];

        %Filtering
        addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\filter design'
        Fs = 2000;
        Hd_butter = buttfilt(8);
        Hd_notch = notch(4);
        train_set_filt = filt(train_set(:,1:end-1), Hd_butter.sosMatrix, Hd_butter.ScaleValues, Hd_notch.sosMatrix, Hd_notch.ScaleValues);
        train_set_filt = resample(train_set_filt,1000,Fs);

        valid_set_filt = filt(valid_set(:,1:end-1), Hd_butter.sosMatrix, Hd_butter.ScaleValues, Hd_notch.sosMatrix, Hd_notch.ScaleValues);
        valid_set_filt = resample(valid_set_filt,1000,Fs);

        %Feature extraction
        addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\feature functions\Time-Domain features'
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
        Mdl = fitcensemble(X_train,y_train,'Method','Bag','Learners',t_EL,'Options', options);
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
    avg_acc = sum(acc_score)/length(acc_score);
    row = find(isnan(f1_score));
    f1_score(row) = [];
    avg_f1 = sum(f1_score)/length(f1_score);
    subject_accuracies(j) = avg_acc;
    subject_f1(j) = avg_f1;
    fprintf("Subject #%d accuracy = %.2f\n",j,subject_accuracies(j))
    fprintf("Subject #%d f1 score = %.2f\n",j,subject_f1(j)) 
end
fprintf("Mean accuracy = %.4f\n",mean(subject_accuracies))
fprintf("Std accuracy = %.4f\n",std(subject_accuracies))
fprintf("Mean f1 = %.4f\n", mean(subject_f1))
fprintf("Std f1 = %.4f\n",std(subject_f1))
