   %% Load and concatenate data
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\DB2_s1'
load_data
%% Session splitting
[session_1,session_2,session_3,session_4,session_5,session_6] = session_splitting_orig(s9_data,s9_labels);
%% Bandpass filter design
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\filter design'
Fs = 2000;
% nth order Butterworth filter design
Hd_butter = buttfilt(8); % Function's argument is the filter's order
% nth oder Elliptic Bandpass filter
% Hd_elliptic = ellipfilt(8);
% nth order Chebyshev Type I Bandpass filter
% Hd_chebyshev = chebfilt(8);

% nth order Butterworth notch filter design
Hd_notch = notch(4);
%% Lambda tuning in Neighborhood Component Analysis (NCA) Feature Selection
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\feature functions\Time-Domain features'

data = cell(6,1);
data{1} = session_1;
data{2} = session_2;
data{3} = session_3;
data{4} = session_4;
data{5} = session_5;
data{6} = session_6;

idx = [1 2 3 4 5 6];

rng(1);

NCA;
save("Loss values of NCA_s10.mat", "lossvals");
%% Plotting results
%lossvals = load("Loss values of NCA_s10.mat").lossvals;
labels = [data{1}(:,end); data{2}(:,end); data{3}(:,end); data{4}(:,end); data{5}(:,end); data{6}(:,end)];
n = length(labels);
lambdavals = linspace(0,20,20)/n;
meanloss = mean(lossvals,2);
figure();
plot(lambdavals, meanloss, 'ro-');
xlabel('{\it \lambda}'); ylabel('Classification error');
grid on
%% Feature selection
[~,idx] = min(meanloss); % Find the index
bestlambda = lambdavals(idx); % Outputing the best lambda
bestloss = meanloss(idx);
%%
winsize = 256;
wininc_train = 128;
wininc_test = 64;

data = [session_1(:,1:12); session_2(:,1:12); session_3(:,1:12); session_4(:,1:12); session_5(:,1:12); session_6(:,1:12)];
labels = [session_1(:,13); session_2(:,13); session_3(:,13); session_4(:,13); session_5(:,13); session_6(:,13)];
%Filtering
data_filt = filt(data, Hd_butter.sosMatrix, Hd_butter.ScaleValues, Hd_notch.sosMatrix, Hd_notch.ScaleValues);
data_filt = resample(data_filt,1000,Fs);
[index,labels] = get_labels(labels);
index = round(index/2);
index(1)=1;
y = get_class(data_filt, labels, index, winsize, wininc_train);
selidx = (1:44)';
X = par_feat_extract(y, data_filt, winsize, wininc_train, selidx);
X = (X - mean(X))./std(X);
%% Splitting signals by channels (1-12)
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
%% NCA Feature selection on each individual channel
tic
% 1st channel
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
toc
%% Averaging Feature Weights through all channels
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
FW_avg = (FW_1+FW_2+FW_3+FW_4+FW_5+FW_6+FW_7+FW_8+FW_9+FW_10+FW_11+FW_12)/12;
FW_avg_hist = max(FW_avg(41:44,1));
FW_avg_ar4 = max(FW_avg(45:48,1));
FW_avg_ar5 = max(FW_avg(49:53,1));
FW_avg_ar6 = max(FW_avg(54:59,1));
FW = [FW_avg(1:40); FW_avg_hist; FW_avg_ar4; FW_avg_ar5; FW_avg_ar6];
save("Feature weights_s10", "FW");
%% Plotting Feature Weights and applying a threshold
figure
stem(FW, 'ro-');
xlabel('Feature Index'); ylabel('Feature Weight');
grid on
%set(0,'defaultfigureposition',[1300 100 800 600]);
%%
th = 7.0;
selidx = find(FW > th);
feature_names = {'RMS','MAV','AAC','AE','ASM','ABSS','CARD','COV','DAMV','DASDV'...
    'DVARV','EMAV','EWL','IEMG','IQR','KURT','LCOV','LD','LDAMV','LDASDV',...
    'MFL','MAD','MAVS','MSR','MMAV1','MMAV2','MYOP','NZC','SSI','SK','SSC','STD'...
    'TKEO','TEMPM','VAR','VAREMG','VO','WL','WAMP','ZC','HIST','AR4', 'AR5', 'AR6'};
FW_selected = FW(selidx, 1)';
FW_selected_table = array2table(FW', 'VariableNames',feature_names);
FW_selected_table = FW_selected_table(:, selidx);
%% Classification
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
f1_score = zeros(length(idx),1);

templates = cell(4,1);

rng(1);

% SVM classifier
%t = templateSVM("KernelFunction", "linear", "KernelScale", "auto"); % Linear scale
%t = templateSVM("KernelFunction", "polynomial", "PolynomialOrder", 2, "KernelScale", "auto"); % Quadratic scale
t_SVM = templateSVM("KernelFunction", "rbf", "KernelScale", "auto");

% kNN classifier
k=3;
t_KNN = templateKNN('NumNeighbors',k);

% LDA classifier
t_LDA = templateDiscriminant('DiscrimType','pseudoLinear');

% Random Forest classifier
t_EL = templateTree("MinLeafSize",10,"MaxNumSplits",300,'SplitCriterion', 'deviance');
options = statset('UseParallel',true);

templates{1} = t_SVM;
templates{2} = t_KNN;
templates{3} = t_LDA;
templates{4} = t_EL;

thres_metrics = cell(6,3);
accuracies = zeros(4,1);
f1_scores = zeros(4,1);
elapsedTime = zeros(4,1);


%for th = 2:7
    %selidx = find(FW > th);
    selidx = (1:44)';
    for j = 1:4
%Model validation
        classification_rule

%Model results
        avg_acc = sum(acc_score)/length(acc_score);
        row = find(isnan(f1_score));
        f1_score(row) = [];
        avg_f1 = sum(f1_score)/length(f1_score);
        accuracies(j) = avg_acc;
        f1_scores(j) = avg_f1;
        fprintf("Cross-validation accuracy = %.2f\n",avg_acc)
        fprintf("Cross-validation f1 score = %.2f\n",avg_f1)
    end
    %thres_metrics{th-1,1} = accuracies;
    %thres_metrics{th-1,2} = f1_scores;
    %thres_metrics{th-1,3} = elapsedTime;
%end
%% Plotting bar graphs
lossvals_s1 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s1.mat').lossvals;
lossvals_s2 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s2.mat').lossvals;
lossvals_s3 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s3.mat').lossvals;
lossvals_s4 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s4.mat').lossvals;
lossvals_s5 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s5.mat').lossvals;
lossvals_s6 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s6.mat').lossvals;
lossvals_s7 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s7.mat').lossvals;
lossvals_s8 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s8.mat').lossvals;
lossvals_s9 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s9.mat').lossvals;
lossvals_s10 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Loss values of NCA_s10.mat').lossvals;
%%
FW_s1 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s1.mat').FW;
FW_s2 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s2.mat').FW;
FW_s3 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s3.mat').FW;
FW_s4 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s4.mat').FW;
FW_s5 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s5.mat').FW;
FW_s6 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s6.mat').FW;
FW_s7 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s7.mat').FW;
FW_s8 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s8.mat').FW;
FW_s9 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s9.mat').FW;
FW_s10 = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\Feature weights_s10.mat').FW;
%%
s1_NCA_weights = load("s1_NCA_weights.mat").FW;
s2_NCA_weights = load("s2_NCA_weights.mat").FW;
s3_NCA_weights = load("s3_NCA_weights.mat").FW;
s4_NCA_weights = load("s4_NCA_weights.mat").FW;
s5_NCA_weights = load("s5_NCA_weights.mat").FW;
s6_NCA_weights = load("s6_NCA_weights.mat").FW;
s7_NCA_weights = load("s7_NCA_weights.mat").FW;
s8_NCA_weights = load("s8_NCA_weights.mat").FW;
s9_NCA_weights = load("s9_NCA_weights.mat").FW;
s10_NCA_weights = load("s10_NCA_weights.mat").FW;
%%
FW_s1_std = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\FW_s1_std.mat').FW_std_s1;
FW_s2_std = load('C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\NCA\FW_s2_std.mat').FW_std_s2;
figure;
axes1 = axes('Parent',figure,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
NF = 1:44;
bar(NF, FW_s1);
xlabel('Feature Index'); ylabel('Feature Weight');
hold on

er = errorbar(NF, FW_s1,FW_s1_std);    
er.Color = [0 0 0];                            
er.LineStyle = 'none';  
ylim([-5 15]);

grid on
set(axes1,'FontSize',17);

hold off   
%%
figure();
bar(NF, FW_s2);
hold on
xlabel('Feature Index'); ylabel('Feature Weight');

er = errorbar(NF, FW_s2,FW_s2_std);    
er.Color = [0 0 0];                            
er.LineStyle = 'none'; 

ylim([-5 15]);
hold off 
%%
figure;
axes1 = axes('Parent',figure,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
n = length(s1_labels);
lambdavals = linspace(0,20,20)/n;
meanloss = mean(lossvals_s1,2);
plot(lambdavals, meanloss,'-o', 'LineWidth', 2);
xlabel('{\it \lambda}'); ylabel('Classification error');
grid on
set(axes1,'FontSize',17);
%%
figure;
axes1 = axes('Parent',figure,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
NF = 1:44;
bar(NF, FW_s10, 'FaceColor', 'flat');
xlabel('Feature Index'); ylabel('Feature Weight');
grid on
set(axes1,'FontSize',17);