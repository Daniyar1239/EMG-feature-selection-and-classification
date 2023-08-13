% Define the accuracy values for each subject and threshold
acc = [0.8067 0.7283 0.7028 0.4744 0.7854; 
       0.8096 0.7316 0.7061 0.4629 0.7835; 
       0.8099 0.7137 0.7048 0.4539 0.7918; 
       0.8079 0.6772 0.6951 0.5145 0.7908; 
       0.8064 0.6581 0.7092 0.6368 0.7875;
       0.7965 0.6170 0.7088 0.6323 0.7871;
       0.7886 0.4499 0.7068 0.6307 0.7863];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(acc');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Accuracy');
grid on
set(axes1,'FontSize',17);
%%
acc = [0.7227 0.6227 0.6680 0.7273 0.6812; 
       0.7210 0.6303 0.6660 0.7308 0.6817; 
       0.7199 0.6036 0.6580 0.7320 0.6784; 
       0.7195 0.5796 0.6571 0.7322 0.6979; 
       0.7240 0.5353 0.7852 0.7269 0.6764;
       0.7243 0.6648 0.7546 0.7401 0.6871;
       0.7189 0.5980 0.7933 0.7080 0.6702];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(acc');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Accuracy');
grid on
set(axes1,'FontSize',17);
%%
f1 = [0.6880 0.6173 0.6440 0.4562 0.6883; 
       0.7006 0.6247 0.6447 0.4476 0.6883; 
       0.7013 0.6020 0.6437 0.4433 0.6928; 
       0.6961 0.5940 0.6292 0.4840 0.6903; 
       0.6933 0.5820 0.6455 0.5914 0.6847;
       0.6795 0.5164 0.6469 0.5867 0.6867;
       0.6584 0.4925 0.6432 0.5849 0.6763];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(f1');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('F1');
grid on
set(axes1,'FontSize',17);
%%
f1 = [0.6448 0.6092 0.5499 0.6728 0.6431; 
       0.6427 0.6150 0.5566 0.6802 0.6481; 
       0.6467 0.5840 0.5484 0.6814 0.6491; 
       0.6463 0.5416 0.5709 0.6807 0.6562; 
       0.6480 0.5413 0.7088 0.6791 0.6315;
       0.6503 0.6248 0.6712 0.6888 0.6415;
       0.6435 0.5212 0.7147 0.6430 0.6213];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(f1');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('F1');
grid on
set(axes1,'FontSize',17);
%%
time = [809.48 920.93 954.40 1065.30 851.47; 
       695.30 811.45 905.19 1054.16 676.33; 
       632.94 703.21 870.41 891.75 638.35; 
       587.94 600.47 820.54 786.86 542.27; 
       465.11 508.69 715.74 705.77 521.66;
       393.11 375.47 595.25 568.22 435.45;
       381.08 308.91 561.20 476.62 364.25];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(time');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Execution time, (s)');
grid on
set(axes1,'FontSize',17);
%%
time = [927.84 1037.92 887.09 911.37 1002.65; 
       879.52 921.44 731.43 786.18 906.40; 
       749.52 735.50 663.16 750.78 823.28; 
       796.54 658.69 563.17 676.63 714.57; 
       644.72 594.82 395.25 587.48 492.59;
       487.87 501.82 381.27 492.01 446.18;
       531.97 459.73 324.81 415.90 387.69];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(time');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Execution time, (s)');
grid on
set(axes1,'FontSize',17);
%%
% Define the accuracy values for each subject and threshold
acc = [accuracy_values_kNN_0(1:5); 
       accuracy_values_kNN_2(1:5); 
       accuracy_values_kNN_3(1:5); 
       accuracy_values_kNN_4(1:5); 
       accuracy_values_kNN_5(1:5);
       accuracy_values_kNN_6(1:5);
       accuracy_values_kNN_7(1:5)];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(acc');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Accuracy');
grid on
set(axes1,'FontSize',17);
%%
% Define the accuracy values for each subject and threshold
acc = [accuracy_values_kNN_0(6:10); 
       accuracy_values_kNN_2(6:10); 
       accuracy_values_kNN_3(6:10); 
       accuracy_values_kNN_4(6:10); 
       accuracy_values_kNN_5(6:10);
       accuracy_values_kNN_6(6:10);
       accuracy_values_kNN_7(6:10)];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(acc');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Accuracy');
grid on
set(axes1,'FontSize',17);
%%
f1 = [f1_values_kNN_0(1:5); 
       f1_values_kNN_2(1:5); 
       f1_values_kNN_3(1:5); 
       f1_values_kNN_4(1:5); 
       f1_values_kNN_5(1:5);
       f1_values_kNN_6(1:5);
       f1_values_kNN_7(1:5)];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(f1');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('F1');
grid on
set(axes1,'FontSize',17);
%%
f1 = [f1_values_kNN_0(6:10); 
       f1_values_kNN_2(6:10); 
       f1_values_kNN_3(6:10); 
       f1_values_kNN_4(6:10); 
       f1_values_kNN_5(6:10);
       f1_values_kNN_6(6:10);
       f1_values_kNN_7(6:10)];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(f1');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('F1');
grid on
set(axes1,'FontSize',17);
%%
time = [time_values_kNN_0(6:10); 
       time_values_kNN_2(6:10); 
       time_values_kNN_3(6:10); 
       time_values_kNN_4(6:10); 
       time_values_kNN_5(6:10);
       time_values_kNN_6(6:10);
       time_values_kNN_7(6:10)];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(time');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Execution time, (s)');
grid on
set(axes1,'FontSize',17);
%%
time = [time_values_kNN_0(1:5); 
       time_values_kNN_2(1:5); 
       time_values_kNN_3(1:5); 
       time_values_kNN_4(1:5); 
       time_values_kNN_5(1:5);
       time_values_kNN_6(1:5);
       time_values_kNN_7(1:5)];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(time');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 3000])
% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Execution time, (s)');
grid on
set(axes1,'FontSize',17);
%%
% Define the accuracy values for each subject and threshold
acc = [accuracy_values_LDA_0(1:5); 
       accuracy_values_LDA_2(1:5); 
       accuracy_values_LDA_3(1:5); 
       accuracy_values_LDA_4(1:5); 
       accuracy_values_LDA_5(1:5);
       accuracy_values_LDA_6(1:5);
       accuracy_values_LDA_7(1:5)];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(acc');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Accuracy');
grid on
set(axes1,'FontSize',17);
%%
% Define the accuracy values for each subject and threshold
acc = [accuracy_values_LDA_0(6:10); 
       accuracy_values_LDA_2(6:10); 
       accuracy_values_LDA_3(6:10); 
       accuracy_values_LDA_4(6:10); 
       accuracy_values_LDA_5(6:10);
       accuracy_values_LDA_6(6:10);
       accuracy_values_LDA_7(6:10)];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(acc');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Accuracy');
grid on
set(axes1,'FontSize',17);
%%
f1 = [f1_values_LDA_0(1:5); 
       f1_values_LDA_2(1:5); 
       f1_values_LDA_3(1:5); 
       f1_values_LDA_4(1:5); 
       f1_values_LDA_5(1:5);
       f1_values_LDA_6(1:5);
       f1_values_LDA_7(1:5)];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(f1');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('F1');
grid on
set(axes1,'FontSize',17);
%%
f1 = [f1_values_LDA_0(6:10); 
       f1_values_LDA_2(6:10); 
       f1_values_LDA_3(6:10); 
       f1_values_LDA_4(6:10); 
       f1_values_LDA_5(6:10);
       f1_values_LDA_6(6:10);
       f1_values_LDA_7(6:10)];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(f1');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('F1');
grid on
set(axes1,'FontSize',17);
%%
time = [time_values_LDA_0(6:10); 
       time_values_LDA_2(6:10); 
       time_values_LDA_3(6:10); 
       time_values_LDA_4(6:10); 
       time_values_LDA_5(6:10);
       time_values_LDA_6(6:10);
       time_values_LDA_7(6:10)];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(time');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1000]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Execution time, (s)');
grid on
set(axes1,'FontSize',17);
%%
time = [time_values_LDA_0(1:5); 
       time_values_LDA_2(1:5); 
       time_values_LDA_3(1:5); 
       time_values_LDA_4(1:5); 
       time_values_LDA_5(1:5);
       time_values_LDA_6(1:5);
       time_values_LDA_7(1:5)];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(time');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1000]);
% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Execution time, (s)');
grid on
set(axes1,'FontSize',17);
%%
% Define the accuracy values for each subject and threshold
acc = [accuracy_values_EBDT_0(1:5); 
       accuracy_values_EBDT_2(1:5); 
       accuracy_values_EBDT_3(1:5); 
       accuracy_values_EBDT_4(1:5); 
       accuracy_values_EBDT_5(1:5);
       accuracy_values_EBDT_6(1:5);
       accuracy_values_EBDT_7(1:5)];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(acc');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Accuracy');
grid on
set(axes1,'FontSize',17);
%%
% Define the accuracy values for each subject and threshold
acc = [accuracy_values_EBDT_0(6:10); 
       accuracy_values_EBDT_2(6:10); 
       accuracy_values_EBDT_3(6:10); 
       accuracy_values_EBDT_4(6:10); 
       accuracy_values_EBDT_5(6:10);
       accuracy_values_EBDT_6(6:10);
       accuracy_values_EBDT_7(6:10)];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(acc');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Accuracy');
grid on
set(axes1,'FontSize',17);
%%
f1 = [f1_values_EBDT_0(1:5); 
       f1_values_EBDT_2(1:5); 
       f1_values_EBDT_3(1:5); 
       f1_values_EBDT_4(1:5); 
       f1_values_EBDT_5(1:5);
       f1_values_EBDT_6(1:5);
       f1_values_EBDT_7(1:5)];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(f1');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('F1');
grid on
set(axes1,'FontSize',17);
%%
f1 = [f1_values_EBDT_0(6:10); 
       f1_values_EBDT_2(6:10); 
       f1_values_EBDT_3(6:10); 
       f1_values_EBDT_4(6:10); 
       f1_values_EBDT_5(6:10);
       f1_values_EBDT_6(6:10);
       f1_values_EBDT_7(6:10)];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(f1');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('F1');
grid on
set(axes1,'FontSize',17);
%%
time = [time_values_EBDT_0(6:10); 
       time_values_EBDT_2(6:10); 
       time_values_EBDT_3(6:10); 
       time_values_EBDT_4(6:10); 
       time_values_EBDT_5(6:10);
       time_values_EBDT_6(6:10);
       time_values_EBDT_7(6:10)];

% Set the names for the subjects
subjects = {'S6', 'S7', 'S8', 'S9', 'S10'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(time');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1000]);

% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Execution time, (s)');
grid on
set(axes1,'FontSize',17);
%%
time = [time_values_EBDT_0(1:5); 
       time_values_EBDT_2(1:5); 
       time_values_EBDT_3(1:5); 
       time_values_EBDT_4(1:5); 
       time_values_EBDT_5(1:5);
       time_values_EBDT_6(1:5);
       time_values_EBDT_7(1:5)];

% Set the names for the subjects
subjects = {'S1', 'S2', 'S3', 'S4', 'S5'};

% Define the threshold values
thresholds = [0, 2, 3, 4, 5, 6, 7];

% Plot the bar chart
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(time');

% Set the x-axis tick labels
xticks(1:numel(subjects));
xticklabels(subjects);
ylim([0 1000]);
% Add a legend for the threshold values
legend(strcat('Th.= ', string(thresholds)), 'Location', 'northeast', 'Orientation','horizontal');
legend('boxoff');

% Add labels and title
xlabel('Subject');
ylabel('Execution time, (s)');
grid on
set(axes1,'FontSize',17);