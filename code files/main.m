%% Load and concatenate data
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\DB2_s1'
load_data
session_splitting_orig
%% Power spectrum density (PSD) using pwelch method
Fs = 2000;
pxx = powerfunc(s1_data, Fs);
%% Bandpass filter design
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\filter design'
Fs = 2000;
% nth order Butterworth filter design
Hd_butter = buttfilt(8); % Function's argument is the Filter's order
% nth oder Elliptic Bandpass filter
% Hd_elliptic = ellipfilt(8);
% nth order Chebyshev Type I Bandpass filter
% Hd_chebyshev = chebfilt(8);

% nth order Butterworth notch filter design
Hd_notch = notch(4);
%% Preprocessing & Model training
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\feature functions\Time-Domain features'

data = cell(6,1);
data{1} = session_1;
data{2} = session_2;
data{3} = session_3;
data{4} = session_4;
data{5} = session_5;
data{6} = session_6;

idx = [1 2 3 4 5 6];
acc_score = zeros(length(idx),1);
rng(1);

%Model parameters
%t = templateSVM("KernelFunction", "linear", "KernelScale", "auto"); % Linear scale 
%t = templateSVM("KernelFunction", "polynomial", "PolynomialOrder", 2, "KernelScale", "auto"); % Quadratic scale
t = templateSVM("KernelFunction", "rbf", "KernelScale", "auto");
options = statset('UseParallel',true); 

%Model validation
classification_rule

%Model results
avg = sum(acc_score)/6;
fprintf("Cross-validation accuracy = %.2f\n",avg)
%% Split data into training and holdout (test) sets
%split = cvpartition(s1_labels, 'HoldOut', 0.1);
%testIdx = split.test;
%trainIdx = split.training;
%X_train = s1_data(trainIdx,:);
%y_train = s1_labels(trainIdx,:);
%X_test = s1_data(testIdx,:);
%y_test = s1_labels(testIdx,:);

% 1,2,3,4,5 - training, 6 - test
X_train_1 = [session_1_data; session_2_data; session_3_data; session_4_data];
X_val_1 = session_5_data;
X_test_1 = session_6_data;
y_train_1 = [session_1_lbl; session_2_lbl; session_3_lbl; session_4_lbl];
y_val_1 =  session_5_lbl;
y_test_1 = session_6_lbl;

% % 1,2,3,4,6 - training, 5 - test
% X_train_2 = [session_1_data; session_2_data; session_3_data; session_4_data; session_6_data];
% X_test_2 = session_5_data;
% y_train_2 = [session_1_lbl; session_2_lbl; session_3_lbl; session_4_lbl; session_6_lbl];
% y_test_2 = session_5_lbl;
% 
% % 1,2,3,5,6 - training, 4 - test
% X_train_3 = [session_1_data; session_2_data; session_3_data; session_5_data; session_6_data];
% X_test_3 = session_4_data;
% y_train_3 = [session_1_lbl; session_2_lbl; session_3_lbl; session_5_lbl; session_6_lbl];
% y_test_3 = session_4_lbl;
% 
% % 1,2,4,5,6 - training, 3 - test
% X_train_4 = [session_1_data; session_2_data; session_4_data; session_5_data; session_6_data];
% X_test_4 = session_3_data;
% y_train_4 = [session_1_lbl; session_2_lbl; session_4_lbl; session_5_lbl; session_6_lbl];
% y_test_4 = session_3_lbl;
% 
% % 1,3,4,5,6 - training, 2 - test
% X_train_5 = [session_1_data; session_3_data; session_4_data; session_5_data; session_6_data];
% X_test_5 = session_2_data;
% y_train_5 = [session_1_lbl; session_3_lbl; session_4_lbl; session_5_lbl; session_6_lbl];
% y_test_5 = session_2_lbl;
% 
% % 2,3,4,5,6 - training, 1 - test
% X_train_6 = [session_2_data; session_3_data; session_4_data; session_5_data; session_6_data];
% X_test_6 = session_1_data;
% y_train_6 = [session_2_lbl; session_3_lbl; session_4_lbl; session_5_lbl; session_6_lbl];
% y_test_6 = session_1_lbl;
%% Balancing the dataset by deleting some zero class points  (OMITTED)
% Training set
nonzero_idx_train = find(y_train~=0);
zero_idx_train = find(y_train==0);
y_train_nonzero = y_train(nonzero_idx_train);
X_train_nonzero = X_train(nonzero_idx_train,:);
y_train_zero = y_train(zero_idx_train);
X_train_zero = X_train(zero_idx_train,:);

y_train_balanced = [y_train_zero(1:3000); y_train_nonzero(1:find(y_train_nonzero==2,1,'first')-1); y_train_zero(3001:6000); y_train_nonzero(find(y_train_nonzero==2,1,'first'):find(y_train_nonzero==3,1,'first')-1);
    y_train_zero(6001:9000); y_train_nonzero(find(y_train_nonzero==3,1,'first'):find(y_train_nonzero==4,1,'first')-1); y_train_zero(9001:12000); y_train_nonzero(find(y_train_nonzero==4,1,'first'):find(y_train_nonzero==5,1,'first')-1);
    y_train_zero(12001:15000); y_train_nonzero(find(y_train_nonzero==5,1,'first'):find(y_train_nonzero==6,1,'first')-1); y_train_zero(15001:18000); y_train_nonzero(find(y_train_nonzero==6,1,'first'):find(y_train_nonzero==7,1,'first')-1);
    y_train_zero(18001:21000); y_train_nonzero(find(y_train_nonzero==7,1,'first'):find(y_train_nonzero==8,1,'first')-1); y_train_zero(21001:24000); y_train_nonzero(find(y_train_nonzero==8,1,'first'):find(y_train_nonzero==9,1,'first')-1);
    y_train_zero(24001:27000); y_train_nonzero(find(y_train_nonzero==9,1,'first'):find(y_train_nonzero==10,1,'first')-1); y_train_zero(27001:30000); y_train_nonzero(find(y_train_nonzero==10,1,'first'):find(y_train_nonzero==11,1,'first')-1);
    y_train_zero(30001:33000); y_train_nonzero(find(y_train_nonzero==11,1,'first'):find(y_train_nonzero==12,1,'first')-1); y_train_zero(33001:36000); y_train_nonzero(find(y_train_nonzero==12,1,'first'):find(y_train_nonzero==13,1,'first')-1);
    y_train_zero(36001:39000); y_train_nonzero(find(y_train_nonzero==13,1,'first'):find(y_train_nonzero==14,1,'first')-1); y_train_zero(39001:42000); y_train_nonzero(find(y_train_nonzero==14,1,'first'):find(y_train_nonzero==15,1,'first')-1);
    y_train_zero(42001:45000); y_train_nonzero(find(y_train_nonzero==15,1,'first'):find(y_train_nonzero==16,1,'first')-1); y_train_zero(45001:48000); y_train_nonzero(find(y_train_nonzero==16,1,'first'):find(y_train_nonzero==17,1,'first')-1);
    y_train_zero(48001:51000); y_train_nonzero(find(y_train_nonzero==17,1,'first'):end)];

X_train_balanced = [X_train_zero(1:3000,:); X_train_nonzero(1:find(y_train_nonzero==2,1,'first')-1,:); X_train_zero(3001:6000,:); X_train_nonzero(find(y_train_nonzero==2,1,'first'):find(y_train_nonzero==3,1,'first')-1,:);
    X_train_zero(6001:9000,:); X_train_nonzero(find(y_train_nonzero==3,1,'first'):find(y_train_nonzero==4,1,'first')-1,:); X_train_zero(9001:12000,:); X_train_nonzero(find(y_train_nonzero==4,1,'first'):find(y_train_nonzero==5,1,'first')-1,:);
    X_train_zero(12001:15000,:); X_train_nonzero(find(y_train_nonzero==5,1,'first'):find(y_train_nonzero==6,1,'first')-1,:); X_train_zero(15001:18000,:); X_train_nonzero(find(y_train_nonzero==6,1,'first'):find(y_train_nonzero==7,1,'first')-1,:);
    X_train_zero(18001:21000,:); X_train_nonzero(find(y_train_nonzero==7,1,'first'):find(y_train_nonzero==8,1,'first')-1,:); X_train_zero(21001:24000,:); X_train_nonzero(find(y_train_nonzero==8,1,'first'):find(y_train_nonzero==9,1,'first')-1,:);
    X_train_zero(24001:27000,:); X_train_nonzero(find(y_train_nonzero==9,1,'first'):find(y_train_nonzero==10,1,'first')-1,:); X_train_zero(27001:30000,:); X_train_nonzero(find(y_train_nonzero==10,1,'first'):find(y_train_nonzero==11,1,'first')-1,:);
    X_train_zero(30001:33000,:); X_train_nonzero(find(y_train_nonzero==11,1,'first'):find(y_train_nonzero==12,1,'first')-1,:); X_train_zero(33001:36000,:); X_train_nonzero(find(y_train_nonzero==12,1,'first'):find(y_train_nonzero==13,1,'first')-1,:);
    X_train_zero(36001:39000,:); X_train_nonzero(find(y_train_nonzero==13,1,'first'):find(y_train_nonzero==14,1,'first')-1,:); X_train_zero(39001:42000,:); X_train_nonzero(find(y_train_nonzero==14,1,'first'):find(y_train_nonzero==15,1,'first')-1,:);
    X_train_zero(42001:45000,:); X_train_nonzero(find(y_train_nonzero==15,1,'first'):find(y_train_nonzero==16,1,'first')-1,:); X_train_zero(45001:48000,:); X_train_nonzero(find(y_train_nonzero==16,1,'first'):find(y_train_nonzero==17,1,'first')-1,:);
    X_train_zero(48001:51000,:); X_train_nonzero(find(y_train_nonzero==17,1,'first'):end,:)];

clear nonzero_idx_train zero_idx_train y_train_nonzero X_train_nonzero y_train_zero X_train_zero X_train y_train

% Test set
nonzero_idx_test = find(y_test~=0);
zero_idx_test = find(y_test==0);
y_test_nonzero = y_test(nonzero_idx_test);
X_test_nonzero = X_test(nonzero_idx_test,:);
y_test_zero = y_test(zero_idx_test);
X_test_zero = X_test(zero_idx_test,:);

y_test_balanced = [y_test_zero(1:500); y_test_nonzero(1:find(y_test_nonzero==2,1,'first')-1); y_test_zero(501:1000); y_test_nonzero(find(y_test_nonzero==2,1,'first'):find(y_test_nonzero==3,1,'first')-1);
    y_test_zero(1001:1500); y_test_nonzero(find(y_test_nonzero==3,1,'first'):find(y_test_nonzero==4,1,'first')-1); y_test_zero(1501:2000); y_test_nonzero(find(y_test_nonzero==4,1,'first'):find(y_test_nonzero==5,1,'first')-1);
    y_test_zero(2001:2500); y_test_nonzero(find(y_test_nonzero==5,1,'first'):find(y_test_nonzero==6,1,'first')-1); y_test_zero(2501:3000); y_test_nonzero(find(y_test_nonzero==6,1,'first'):find(y_test_nonzero==7,1,'first')-1);
    y_test_zero(3001:3500); y_test_nonzero(find(y_test_nonzero==7,1,'first'):find(y_test_nonzero==8,1,'first')-1); y_test_zero(3501:4000); y_test_nonzero(find(y_test_nonzero==8,1,'first'):find(y_test_nonzero==9,1,'first')-1);
    y_test_zero(4001:4500); y_test_nonzero(find(y_test_nonzero==9,1,'first'):find(y_test_nonzero==10,1,'first')-1); y_test_zero(4501:5000); y_test_nonzero(find(y_test_nonzero==10,1,'first'):find(y_test_nonzero==11,1,'first')-1);
    y_test_zero(5001:5500); y_test_nonzero(find(y_test_nonzero==11,1,'first'):find(y_test_nonzero==12,1,'first')-1); y_test_zero(5501:6000); y_test_nonzero(find(y_test_nonzero==12,1,'first'):find(y_test_nonzero==13,1,'first')-1);
    y_test_zero(6001:6500); y_test_nonzero(find(y_test_nonzero==13,1,'first'):find(y_test_nonzero==14,1,'first')-1); y_test_zero(6501:7000); y_test_nonzero(find(y_test_nonzero==14,1,'first'):find(y_test_nonzero==15,1,'first')-1);
    y_test_zero(7001:7500); y_test_nonzero(find(y_test_nonzero==15,1,'first'):find(y_test_nonzero==16,1,'first')-1); y_test_zero(7501:8000); y_test_nonzero(find(y_test_nonzero==16,1,'first'):find(y_test_nonzero==17,1,'first')-1);
    y_test_zero(8001:8500); y_test_nonzero(find(y_test_nonzero==17,1,'first'):end)];

X_test_balanced = [X_test_zero(1:500,:); X_test_nonzero(1:find(y_test_nonzero==2,1,'first')-1,:); X_test_zero(501:1000,:); X_test_nonzero(find(y_test_nonzero==2,1,'first'):find(y_test_nonzero==3,1,'first')-1,:);
    X_test_zero(1001:1500,:); X_test_nonzero(find(y_test_nonzero==3,1,'first'):find(y_test_nonzero==4,1,'first')-1,:); X_test_zero(1501:2000,:); X_test_nonzero(find(y_test_nonzero==4,1,'first'):find(y_test_nonzero==5,1,'first')-1,:);
    X_test_zero(2001:2500,:); X_test_nonzero(find(y_test_nonzero==5,1,'first'):find(y_test_nonzero==6,1,'first')-1,:); X_test_zero(2501:3000,:); X_test_nonzero(find(y_test_nonzero==6,1,'first'):find(y_test_nonzero==7,1,'first')-1,:);
    X_test_zero(3001:3500,:); X_test_nonzero(find(y_test_nonzero==7,1,'first'):find(y_test_nonzero==8,1,'first')-1,:); X_test_zero(3501:4000,:); X_test_nonzero(find(y_test_nonzero==8,1,'first'):find(y_test_nonzero==9,1,'first')-1,:);
    X_test_zero(4001:4500,:); X_test_nonzero(find(y_test_nonzero==9,1,'first'):find(y_test_nonzero==10,1,'first')-1,:); X_test_zero(4501:5000,:); X_test_nonzero(find(y_test_nonzero==10,1,'first'):find(y_test_nonzero==11,1,'first')-1,:);
    X_test_zero(5001:5500,:); X_test_nonzero(find(y_test_nonzero==11,1,'first'):find(y_test_nonzero==12,1,'first')-1,:); X_test_zero(5501:6000,:); X_test_nonzero(find(y_test_nonzero==12,1,'first'):find(y_test_nonzero==13,1,'first')-1,:);
    X_test_zero(6001:6500,:); X_test_nonzero(find(y_test_nonzero==13,1,'first'):find(y_test_nonzero==14,1,'first')-1,:); X_test_zero(6501:7000,:); X_test_nonzero(find(y_test_nonzero==14,1,'first'):find(y_test_nonzero==15,1,'first')-1,:);
    X_test_zero(7001:7500,:); X_test_nonzero(find(y_test_nonzero==15,1,'first'):find(y_test_nonzero==16,1,'first')-1,:); X_test_zero(7501:8000,:); X_test_nonzero(find(y_test_nonzero==16,1,'first'):find(y_test_nonzero==17,1,'first')-1,:);
    X_test_zero(8001:8500,:); X_test_nonzero(find(y_test_nonzero==17,1,'first'):end,:)];

clear nonzero_idx_test zero_idx_test y_test_nonzero X_test_nonzero y_test_zero X_test_zero X_test y_test