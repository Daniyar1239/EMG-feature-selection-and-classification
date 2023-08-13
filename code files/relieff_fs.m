winsize = 256;
wininc_train = 128;
wininc_test = 64;

addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\subjects'
load_data

for i = 1:10
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

    %ReliefF feature selection
    [idx,weights] = relieff(X,y,10);

    %Store weights
    save(sprintf('s%d_reliefF_weights.mat', i), 'weights');
end

%% Loading reliefF weights for each subject
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\reliefF'
subjects_weights = cell(10,1);
for i = 1:10
    subjects_weights{i} = load(sprintf('s%d_reliefF_weights.mat', i)).weights;
end
%% Extracting one channel - signals for each subject
channel_weights = cell(12,1);
subject_channel_weights = cell(10,1);
for j = 1:10
    for i = 1:12
        channel_weights{i} = one_channel(subjects_weights{j},i);
    end
    subject_channel_weights{j} = channel_weights;
end
%% Averaging reliefF weights across 12 channels
% For S1
FW_1 = subject_channel_weights{1,1}{1,1};
FW_2 = subject_channel_weights{1,1}{2,1};
FW_3 = subject_channel_weights{1,1}{3,1};
FW_4 = subject_channel_weights{1,1}{4,1};
FW_5 = subject_channel_weights{1,1}{5,1};
FW_6 = subject_channel_weights{1,1}{6,1};
FW_7 = subject_channel_weights{1,1}{7,1};
FW_8 = subject_channel_weights{1,1}{8,1};
FW_9 = subject_channel_weights{1,1}{9,1};
FW_10 = subject_channel_weights{1,1}{10,1};
FW_11 = subject_channel_weights{1,1}{11,1};
FW_12 = subject_channel_weights{1,1}{12,1};
FW_avg = (FW_1+FW_2+FW_3+FW_4+FW_5+FW_6+FW_7+FW_8+FW_9+FW_10+FW_11+FW_12)/12;
FW_avg = FW_avg';
FW_avg_hist = max(FW_avg(41:44,1));
FW_avg_ar4 = max(FW_avg(45:48,1));
FW_avg_ar5 = max(FW_avg(49:53,1));
FW_avg_ar6 = max(FW_avg(54:59,1));
FW = [FW_avg(1:40); FW_avg_hist; FW_avg_ar4; FW_avg_ar5; FW_avg_ar6];
bar(FW)
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
    
    FW_1 = subject_channel_weights{j,1}{1,1};
    FW_2 = subject_channel_weights{j,1}{2,1};
    FW_3 = subject_channel_weights{j,1}{3,1};
    FW_4 = subject_channel_weights{j,1}{4,1};
    FW_5 = subject_channel_weights{j,1}{5,1};
    FW_6 = subject_channel_weights{j,1}{6,1};
    FW_7 = subject_channel_weights{j,1}{7,1};
    FW_8 = subject_channel_weights{j,1}{8,1};
    FW_9 = subject_channel_weights{j,1}{9,1};
    FW_10 = subject_channel_weights{j,1}{10,1};
    FW_11 = subject_channel_weights{j,1}{11,1};
    FW_12 = subject_channel_weights{j,1}{12,1};
    FW_avg = (FW_1+FW_2+FW_3+FW_4+FW_5+FW_6+FW_7+FW_8+FW_9+FW_10+FW_11+FW_12)/12;
    FW_avg = FW_avg';
    FW_avg_hist = max(FW_avg(41:44,1));
    FW_avg_ar4 = max(FW_avg(45:48,1));
    FW_avg_ar5 = max(FW_avg(49:53,1));
    FW_avg_ar6 = max(FW_avg(54:59,1));
    FW = [FW_avg(1:40); FW_avg_hist; FW_avg_ar4; FW_avg_ar5; FW_avg_ar6];
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
save("reliefF_top5_acc",'subject_accuracies');
save("reliefF_top5_f1",'subject_f1');
fprintf("Mean accuracy = %.4f\n",mean(subject_accuracies))
fprintf("Std accuracy = %.4f\n",std(subject_accuracies))
fprintf("Mean f1 = %.4f\n", mean(subject_f1))
fprintf("Std f1 = %.4f\n",std(subject_f1))