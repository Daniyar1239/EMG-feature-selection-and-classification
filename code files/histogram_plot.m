accuracy_values_SVM_0 = [0.8067 0.7283 0.7028 0.4744 0.7854 0.7227 0.6227 0.6680 0.7273 0.6812];
f1_values_SVM_0 = [0.6880 0.6173 0.6440 0.4562 0.6883 0.6448 0.6092 0.5499 0.6728 0.6431];
time_values_SVM_0 = [809.48 920.93 954.40 1065.30 851.47 927.84 1037.92 887.09 911.37 1002.65];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_SVM_0, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_SVM_0, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_SVM_0, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_kNN_0 = [0.7605 0.7054 0.6491 0.4678 0.7589 0.6800 0.6182 0.7267 0.6879 0.6423];
f1_values_kNN_0 = [0.6335 0.5689 0.5789 0.4145 0.6516 0.6019 0.5707 0.6030 0.6195 0.5785];
time_values_kNN_0 = [2454.50 2482.85 2444.16 2403.71 2463.53 2465.46 2405.17 2410.90 2464.60 2595.92];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_kNN_0, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_kNN_0, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_kNN_0, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([1500 2700]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_LDA_0 = [0.6540 0.4917 0.3925 0.3479 0.6436 0.6015 0.3958 0.3620 0.6241 0.3875];
f1_values_LDA_0 = [0.5844 0.5758 0.4933 0.3591 0.5720 0.5482 0.5080 0.4525 0.5795 0.4890];
time_values_LDA_0 = [752.97 746.72 746.13 765.08 768.74 749.59 788.19 766.11 855.39 786.53];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_LDA_0, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_LDA_0, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_LDA_0, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 1000]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

%%
accuracy_values_EBDT_0 = [0.7768 0.7071 0.6885 0.5918 0.7774 0.7034 0.6613 0.7827 0.7064 0.6672];
f1_values_EBDT_0 = [0.6334 0.5544 0.5961 0.5164 0.6452 0.6087 0.6208 0.6208 0.6184 0.6110];
time_values_EBDT_0 = [591.86 609.83 642.76 647.27 593.45 639.68 641.74 607.72 689.74 642.95];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_EBDT_0, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_EBDT_0, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_EBDT_0, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_SVM_2 = [0.8096 0.7316 0.7061 0.4629 0.7835 0.7210 0.6303 0.6660 0.7308 0.6817];
f1_values_SVM_2 = [0.7006 0.6247 0.6447 0.4476 0.6883 0.6427 0.6150 0.5566 0.6802 0.6481];
time_values_SVM_2 = [695.30 811.45 905.19 1054.16 676.33 879.52 921.44 731.43 786.18 906.40];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_SVM_2, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_SVM_2, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_SVM_2, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 1200]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_kNN_2 = [0.7640 0.7104 0.6669 0.4655 0.7549 0.6789 0.6160 0.6364 0.6910 0.6467];
f1_values_kNN_2 = [0.6426 0.5780 0.6009 0.4169 0.6520 0.6013 0.5698 0.5645 0.6269 0.5850];
time_values_kNN_2 = [2044.98 2338.55 2319.27 2319.44 1958.70 2403.70 2061.29 1902.42 2026.79 2306.99];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};


% Create a bar plot with one bar per subject, with different colors for each bar
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_kNN_2, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_kNN_2, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_kNN_2, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([1300 2500]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_LDA_2 = [0.7491 0.4975 0.3962 0.3488 0.6424 0.5953 0.3843 0.3669 0.6210 0.3918];
f1_values_LDA_2 = [0.5844 0.4613 0.5001 0.3617 0.5807 0.5452 0.4622 0.4855 0.5862 0.4664];
time_values_LDA_2 = [661.14 799.31 730.76 771.93 674.46 790.76 753.07 690.61 711.78 745.81];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_LDA_2, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_LDA_2, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_LDA_2, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 1000]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_EBDT_2 = [0.7788 0.7074 0.6885 0.5916 0.7817 0.7036 0.6637 0.7867 0.7104 0.6671];
f1_values_EBDT_2 = [0.6357 0.5549 0.5939 0.5168 0.6509 0.6029 0.6230 0.6941 0.6264 0.6116];
time_values_EBDT_2 = [558.18 606.23 609.16 624.86 542.81 609.08 616.99 599.71 585.02 597.82];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_EBDT_2, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_EBDT_2, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_EBDT_2, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_SVM_3 = [0.8099 0.7137 0.7048 0.4539 0.7918 0.7199 0.6036 0.6580 0.7320 0.6784];
f1_values_SVM_3 = [0.7013 0.6020 0.6437 0.4433 0.6928 0.6467 0.5840 0.5484 0.6814 0.6491];
time_values_SVM_3 = [632.94 703.21 870.41 891.75 638.35 749.52 735.50 663.16 750.78 823.28];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_SVM_3, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_SVM_3, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_SVM_3, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 1000]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_kNN_3 = [0.7683 0.6989 0.6657 0.4492 0.7550 0.6790 0.5555 0.6135 0.6886 0.6430];
f1_values_kNN_3 = [0.6467 0.5566 0.5999 0.4180 0.6469 0.6010 0.4788 0.6114 0.6257 0.5801];
time_values_kNN_3 = [1622.30 1720.81 2205.28 1805.87 1661.59 1869.98 1406.47 1608.27 1782.39 1975.84];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_kNN_3, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_kNN_3, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_kNN_3, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([1200 2400]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_LDA_3 = [0.7475 0.4937 0.4001 0.3190 0.7442 0.5846 0.3497 0.3718 0.5811 0.3836];
f1_values_LDA_3 = [0.6368 0.4430 0.5021 0.3647 0.6292 0.5550 0.4420 0.4908 0.5845 0.4821];
time_values_LDA_3 = [584.80 600.47 704.98 607.34 637.34 632.68 600.19 574.33 644.32 703.20];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar
figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_LDA_3, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_LDA_3, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_LDA_3, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_EBDT_3 = [0.7779 0.7083 0.6860 0.5967 0.7823 0.7077 0.6662 0.7848 0.7145 0.6701];
f1_values_EBDT_3 = [0.6393 0.5535 0.5900 0.5280 0.6521 0.6138 0.6312 0.6879 0.6315 0.6165];
time_values_EBDT_3 = [502.96 526.69 601.04 542.91 523.80 641.49 576.13 515.30 545.07 598.34];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_EBDT_3, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_EBDT_3, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_EBDT_3, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_SVM_4 = [0.8079 0.6772 0.6951 0.5145 0.7908 0.7195 0.5796 0.6571 0.7322 0.6979];
f1_values_SVM_4 = [0.6961 0.5940 0.6292 0.4840 0.6903 0.6463 0.5416 0.5709 0.6807 0.6562];
time_values_SVM_4 = [587.94 600.47 820.54 786.86 542.27 796.54 658.69 563.17 676.63 714.57];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_SVM_4, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_SVM_4, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_SVM_4, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 1000]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_kNN_4 = [0.7630 0.6909 0.6578 0.4377 0.7482 0.6778 0.5254 0.6154 0.6896 0.6473];
f1_values_kNN_4 = [0.6411 0.5421 0.5872 0.3746 0.6373 0.5981 0.4805 0.6148 0.6294 0.5845];
time_values_kNN_4 = [1360.34 1334.97 1921.29 1594.40 1324.10 2166.04 1203.71 1329.23 1614.73 1491.93];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_kNN_4, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_kNN_4, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_kNN_4, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([800 2200]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_LDA_4 = [0.7461 0.5059 0.3484 0.3443 0.7434 0.5786 0.3624 0.3766 0.5877 0.4958];
f1_values_LDA_4 = [0.6462 0.4520 0.5021 0.3684 0.6311 0.5555 0.4125 0.4806 0.5813 0.5060];
time_values_LDA_4 = [538.99 509.74 647.70 564.67 500.73 644.42 666.02 507.79 571.09 576.14];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_LDA_4, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_LDA_4, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_LDA_4, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_EBDT_4 = [0.7802 0.7021 0.6882 0.5997 0.7823 0.7099 0.6653 0.7885 0.7137 0.6720];
f1_values_EBDT_4 = [0.6414 0.5524 0.5942 0.5314 0.6584 0.6170 0.6296 0.6982 0.6299 0.6192];
time_values_EBDT_4 = [484.74 470.59 579.64 524.28 424.00 532.55 701.22 496.90 512.98 525.93];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_EBDT_4, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_EBDT_4, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_EBDT_4, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_SVM_5 = [0.8064 0.6581 0.7092 0.6368 0.7875 0.7240 0.5353 0.7852 0.7269 0.6764];
f1_values_SVM_5 = [0.6933 0.5820 0.6455 0.5914 0.6847 0.6480 0.5413 0.7088 0.6791 0.6315];
time_values_SVM_5 = [465.11 508.69 715.74 705.77 521.66 644.72 594.82 395.25 587.48 492.59];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_SVM_5, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_SVM_5, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_SVM_5, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_kNN_5 = [0.7577 0.6727 0.6557 0.5729 0.7433 0.6782 0.4578 0.7633 0.6933 0.6400];
f1_values_kNN_5 = [0.6275 0.5076 0.5808 0.5082 0.6291 0.6018 0.4307 0.6697 0.6334 0.5740];
time_values_kNN_5 = [1147.45 1079.42 1632.13 1478.37 1265.08 1473.16 826.29 712.18 1328.67 934.34];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_kNN_5, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_kNN_5, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_kNN_5, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([600 1800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_LDA_5 = [0.7463 0.5020 0.6325 0.5756 0.7403 0.6754 0.3272 0.6245 0.5929 0.4217];
f1_values_LDA_5 = [0.6312 0.4582 0.5515 0.5290 0.6221 0.6036 0.4362 0.5880 0.5772 0.4555];
time_values_LDA_5 = [456.43 438.91 605.76 555.01 519.40 541.60 518.58 336.03 515.01 371.37];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_LDA_5, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_LDA_5, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_LDA_5, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([0 800]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_EBDT_5 = [0.7791 0.6935 0.6884 0.6013 0.7814 0.7077 0.6533 0.7788 0.7132 0.6646];
f1_values_EBDT_5 = [0.6422 0.5428 0.5989 0.5341 0.6575 0.6141 0.6097 0.6822 0.6282 0.6044];
time_values_EBDT_5 = [398.07 415.83 562.58 531.05 444.91 491.67 543.05 332.57 479.58 383.88];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_EBDT_5, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_EBDT_5, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_EBDT_5, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([0 700]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_SVM_6 = [0.7965 0.6170 0.7088 0.6323 0.7871 0.7243 0.6648 0.7546 0.7401 0.6871];
f1_values_SVM_6 = [0.6795 0.5164 0.6469 0.5867 0.6867 0.6503 0.6248 0.6712 0.6888 0.6415];
time_values_SVM_6 = [393.11 375.47 595.25 568.22 435.45 487.87 501.82 381.27 492.01 446.18];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_SVM_6, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_SVM_6, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_SVM_6, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([0 700]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_kNN_6 = [0.7639 0.6083 0.6522 0.5669 0.7518 0.6750 0.6277 0.7251 0.6923 0.6470];
f1_values_kNN_6 = [0.6383 0.3916 0.5788 0.5021 0.6334 0.5964 0.5774 0.6104 0.6293 0.5791];
time_values_kNN_6 = [716.07 627.44 1249.13 898.25 721.04 1107.94 479.02 607.15 863.79 653.01];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_kNN_6, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_kNN_6, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_kNN_6, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 1400]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_LDA_6 = [0.7346 0.3876 0.6334 0.5700 0.7376 0.6748 0.5521 0.6257 0.6887 0.4086];
f1_values_LDA_6 = [0.6169 0.3781 0.5520 0.5228 0.6125 0.6008 0.4797 0.5663 0.6106 0.4306];
time_values_LDA_6 = [335.99 329.05 480.66 492.42 373.69 538.98 399.22 310.98 428.06 352.19];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_LDA_6, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_LDA_6, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_LDA_6, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([0 700]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_EBDT_6 = [0.7757 0.7042 0.6869 0.5986 0.7816 0.7078 0.6477 0.7731 0.7150 0.6687];
f1_values_EBDT_6 = [0.6324 0.5496 0.5984 0.5292 0.6554 0.6132 0.6030 0.6756 0.6283 0.6126];
time_values_EBDT_6 = [350.46 323.24 455.47 485.00 365.03 509.40 467.54 326.30 422.50 338.94];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_EBDT_6, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_EBDT_6, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_EBDT_6, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([0 600]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_SVM_7 = [0.7886 0.4499 0.7068 0.6307 0.7863 0.7189 0.5980 0.7933 0.7080 0.6702];
f1_values_SVM_7 = [0.6584 0.4925 0.6432 0.5849 0.6763 0.6435 0.5212 0.7147 0.6430 0.6213];
time_values_SVM_7 = [381.08 308.91 561.20 476.62 364.25 531.97 459.73 324.81 415.90 387.69];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_SVM_7, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_SVM_7, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_SVM_7, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([0 700]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_kNN_7 = [0.7472 0.6234 0.6470 0.5640 0.7612 0.6605 0.5709 0.7629 0.6643 0.6313];
f1_values_kNN_7 = [0.5968 0.4178 0.5701 0.4978 0.6412 0.5744 0.4862 0.6687 0.5888 0.5652];
time_values_kNN_7 = [520.75 337.94 1155.40 770.68 389.68 862.77 461.91 433.39 493.01 439.74];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_kNN_7, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_kNN_7, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_kNN_7, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([200 1200]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_LDA_7 = [0.7108 0.6061 0.6411 0.5708 0.7257 0.6716 0.4694 0.7214 0.6659 0.5774] ;
f1_values_LDA_7 = [0.5617 0.4180 0.5509 0.5262 0.5657 0.5965 0.3272 0.6177 0.5607 0.4910];
time_values_LDA_7 = [324.80 275.29 450.48 353.00 300.73 479.93 464.23 277.87 361.12 293.13];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_LDA_7, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_LDA_7, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_LDA_7, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([0 600]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);
%%
accuracy_values_EBDT_7 = [0.7713 0.6831 0.6881 0.6006 0.7801 0.7109 0.6146 0.7881 0.7095 0.6674];
f1_values_EBDT_7 = [0.6263 0.5313 0.5994 0.5337 0.6657 0.6229 0.5483 0.6934 0.6224 0.6120];
time_values_EBDT_7 = [350.66 281.45 440.37 361.52 319.08 487.59 479.09 329.83 384.94 317.33];
subject_names = {'S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'};

% Create a bar plot with one bar per subject, with different colors for each bar

figure1 = figure;
axes1 = axes('Parent',figure1,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
bar(1:10, accuracy_values_EBDT_7, 'FaceColor', 'flat');
xlabel('Subject');
ylim([0 1]);
ylabel('Accuracy');
set(axes1,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);


figure2 = figure;
axes2 = axes('Parent',figure2,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes2,'on');
bar(1:10, f1_values_EBDT_7, 'FaceColor',[0.0784313753247261 0.168627455830574 0.549019634723663]);
xlabel('Subject');
ylim([0 1]);
ylabel('F1');
set(axes2,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);

figure3 = figure;
axes3 = axes('Parent',figure3,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes3,'on');
bar(1:10, time_values_EBDT_7, 'FaceColor', [0.301960796117783 0.745098054409027 0.933333337306976]);
xlabel('Subject');
ylim([0 600]);
ylabel('Execution time, (s)');
set(axes3,'FontSize',17,'XTick',[1 2 3 4 5 6 7 8 9 10],'XTickLabel',...
    subject_names);