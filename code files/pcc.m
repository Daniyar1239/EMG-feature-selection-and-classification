winsize = 256;
wininc_train = 128;
wininc_test = 64;

%addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\subjects'
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

    %PCC feature selection
    R = corrcoef(X);

    %Store weights
    save(sprintf('s%d_corr_matrix.mat', i), 'R');
end