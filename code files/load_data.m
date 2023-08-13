%addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\subjects'
% Subject 1, Exercise 1
s1_e1_data = load("DB2_s1\S1_E1_A1.mat","emg");
s1_e1_labels = load("DB2_s1\S1_E1_A1.mat","restimulus");
s1_e1_data = s1_e1_data.emg;    % Extract emg data
s1_e1_labels = s1_e1_labels.restimulus; % Extract labels
s1_e1_data = s1_e1_data(1:find(s1_e1_labels==17,1,'last'),:);
s1_e1_labels = s1_e1_labels(1:find(s1_e1_labels==17,1,'last'),:);

% Subject 1, Exercise 2
s1_e2_data = load("DB2_s1\S1_E2_A1.mat","emg");
s1_e2_labels = load("DB2_s1\S1_E2_A1.mat","restimulus");
s1_e2_data = s1_e2_data.emg;    % Extract emg data
s1_e2_labels = s1_e2_labels.restimulus; % Extract labels
s1_e2_data = s1_e2_data(1:find(s1_e2_labels==40,1,'last'),:);
s1_e2_labels = s1_e2_labels(1:find(s1_e2_labels==40,1,'last'),:);

% Subject 1, Exercise 3
s1_e3_data = load("DB2_s1\S1_E3_A1.mat","emg");
s1_e3_labels = load("DB2_s1\S1_E3_A1.mat","restimulus");
s1_e3_data = s1_e3_data.emg;    % Extract emg data
s1_e3_labels = s1_e3_labels.restimulus; % Extract labels
s1_e3_data = s1_e3_data(1:end,:);
s1_e3_labels = s1_e3_labels(1:end,:);

% Concatenate data for subject 1
s1_data = [s1_e1_data; s1_e2_data; s1_e3_data];
s1_labels = [s1_e1_labels; s1_e2_labels; s1_e3_labels];
clear s1_e1_data s1_e2_data s1_e1_labels s1_e2_labels s1_e3_labels s1_e3_data

%% 
% Subject 2, Exercise 1
s2_e1_data = load("DB2_s2\S2_E1_A1.mat","emg");
s2_e1_labels = load("DB2_s2\S2_E1_A1.mat","restimulus");
s2_e1_data = s2_e1_data.emg;    % Extract emg data
s2_e1_labels = s2_e1_labels.restimulus; % Extract labels
s2_e1_data = s2_e1_data(1:find(s2_e1_labels==17,1,'last'),:);
s2_e1_labels = s2_e1_labels(1:find(s2_e1_labels==17,1,'last'),:);

% Subject 2, Exercise 2
s2_e2_data = load("DB2_s2\S2_E2_A1.mat","emg");
s2_e2_labels = load("DB2_s2\S2_E2_A1.mat","restimulus");
s2_e2_data = s2_e2_data.emg;    % Extract emg data
s2_e2_labels = s2_e2_labels.restimulus; % Extract labels
s2_e2_data = s2_e2_data(1:find(s2_e2_labels==40,1,'last'),:);
s2_e2_labels = s2_e2_labels(1:find(s2_e2_labels==40,1,'last'),:);

% Subject 2, Exercise 3
s2_e3_data = load("DB2_s2\S2_E3_A1.mat","emg");
s2_e3_labels = load("DB2_s2\S2_E3_A1.mat","restimulus");
s2_e3_data = s2_e3_data.emg;    % Extract emg data
s2_e3_labels = s2_e3_labels.restimulus; % Extract labels
s2_e3_data = s2_e3_data(1:end,:);
s2_e3_labels = s2_e3_labels(1:end,:);

% Concatenate data for Subject 2
s2_data = [s2_e1_data; s2_e2_data; s2_e3_data];
s2_labels = [s2_e1_labels; s2_e2_labels; s2_e3_labels];
clear s2_e1_data s2_e2_data s2_e1_labels s2_e2_labels s2_e3_labels s2_e3_data
%%
% Subject 3, Exercise 1
s3_e1_data = load("DB2_s3\S3_E1_A1.mat","emg");
s3_e1_labels = load("DB2_s3\S3_E1_A1.mat","restimulus");
s3_e1_data = s3_e1_data.emg;    % Extract emg data
s3_e1_labels = s3_e1_labels.restimulus; % Extract labels
s3_e1_data = s3_e1_data(1:find(s3_e1_labels==17,1,'last'),:);
s3_e1_labels = s3_e1_labels(1:find(s3_e1_labels==17,1,'last'),:);

% Subject 3, Exercise 2
s3_e2_data = load("DB2_s3\S3_E2_A1.mat","emg");
s3_e2_labels = load("DB2_s3\S3_E2_A1.mat","restimulus");
s3_e2_data = s3_e2_data.emg;    % Extract emg data
s3_e2_labels = s3_e2_labels.restimulus; % Extract labels
s3_e2_data = s3_e2_data(1:find(s3_e2_labels==40,1,'last'),:);
s3_e2_labels = s3_e2_labels(1:find(s3_e2_labels==40,1,'last'),:);

% Subject 3, Exercise 3
s3_e3_data = load("DB2_s3\S3_E3_A1.mat","emg");
s3_e3_labels = load("DB2_s3\S3_E3_A1.mat","restimulus");
s3_e3_data = s3_e3_data.emg;    % Extract emg data
s3_e3_labels = s3_e3_labels.restimulus; % Extract labels
s3_e3_data = s3_e3_data(1:end,:);
s3_e3_labels = s3_e3_labels(1:end,:);

% Concatenate data for Subject 3
s3_data = [s3_e1_data; s3_e2_data; s3_e3_data];
s3_labels = [s3_e1_labels; s3_e2_labels; s3_e3_labels];
clear s3_e1_data s3_e2_data s3_e1_labels s3_e2_labels s3_e3_labels s3_e3_data
%%
% Subject 4, Exercise 1
s4_e1_data = load("DB2_s4\S4_E1_A1.mat","emg");
s4_e1_labels = load("DB2_s4\S4_E1_A1.mat","restimulus");
s4_e1_data = s4_e1_data.emg;    % Extract emg data
s4_e1_labels = s4_e1_labels.restimulus; % Extract labels
s4_e1_data = s4_e1_data(1:find(s4_e1_labels==17,1,'last'),:);
s4_e1_labels = s4_e1_labels(1:find(s4_e1_labels==17,1,'last'),:);

% Subject 4, Exercise 2
s4_e2_data = load("DB2_s4\S4_E2_A1.mat","emg");
s4_e2_labels = load("DB2_s4\S4_E2_A1.mat","restimulus");
s4_e2_data = s4_e2_data.emg;    % Extract emg data
s4_e2_labels = s4_e2_labels.restimulus; % Extract labels
s4_e2_data = s4_e2_data(1:find(s4_e2_labels==40,1,'last'),:);
s4_e2_labels = s4_e2_labels(1:find(s4_e2_labels==40,1,'last'),:);

% Subject 4, Exercise 3
s4_e3_data = load("DB2_s4\S4_E3_A1.mat","emg");
s4_e3_labels = load("DB2_s4\S4_E3_A1.mat","restimulus");
s4_e3_data = s4_e3_data.emg;    % Extract emg data
s4_e3_labels = s4_e3_labels.restimulus; % Extract labels
s4_e3_data = s4_e3_data(1:end,:);
s4_e3_labels = s4_e3_labels(1:end,:);

% Concatenate data for Subject 4
s4_data = [s4_e1_data; s4_e2_data; s4_e3_data];
s4_labels = [s4_e1_labels; s4_e2_labels; s4_e3_labels];
clear s4_e1_data s4_e2_data s4_e1_labels s4_e2_labels s4_e3_labels s4_e3_data
%%
% Subject 5, Exercise 1
s5_e1_data = load("DB2_s5\S5_E1_A1.mat","emg");
s5_e1_labels = load("DB2_s5\S5_E1_A1.mat","restimulus");
s5_e1_data = s5_e1_data.emg;    % Extract emg data
s5_e1_labels = s5_e1_labels.restimulus; % Extract labels
s5_e1_data = s5_e1_data(1:find(s5_e1_labels==17,1,'last'),:);
s5_e1_labels = s5_e1_labels(1:find(s5_e1_labels==17,1,'last'),:);

% Subject 5, Exercise 2
s5_e2_data = load("DB2_s5\S5_E2_A1.mat","emg");
s5_e2_labels = load("DB2_s5\S5_E2_A1.mat","restimulus");
s5_e2_data = s5_e2_data.emg;    % Extract emg data
s5_e2_labels = s5_e2_labels.restimulus; % Extract labels
s5_e2_data = s5_e2_data(1:find(s5_e2_labels==40,1,'last'),:);
s5_e2_labels = s5_e2_labels(1:find(s5_e2_labels==40,1,'last'),:);

% Subject 5, Exercise 3
s5_e3_data = load("DB2_s5\S5_E3_A1.mat","emg");
s5_e3_labels = load("DB2_s5\S5_E3_A1.mat","restimulus");
s5_e3_data = s5_e3_data.emg;    % Extract emg data
s5_e3_labels = s5_e3_labels.restimulus; % Extract labels
s5_e3_data = s5_e3_data(1:end,:);
s5_e3_labels = s5_e3_labels(1:end,:);

% Concatenate data for Subject 5
s5_data = [s5_e1_data; s5_e2_data; s5_e3_data];
s5_labels = [s5_e1_labels; s5_e2_labels; s5_e3_labels];
clear s5_e1_data s5_e2_data s5_e1_labels s5_e2_labels s5_e3_labels s5_e3_data
%%
% Subject 6, Exercise 1
s6_e1_data = load("DB2_s6\S6_E1_A1.mat","emg");
s6_e1_labels = load("DB2_s6\S6_E1_A1.mat","restimulus");
s6_e1_data = s6_e1_data.emg;    % Extract emg data
s6_e1_labels = s6_e1_labels.restimulus; % Extract labels
s6_e1_data = s6_e1_data(1:find(s6_e1_labels==17,1,'last'),:);
s6_e1_labels = s6_e1_labels(1:find(s6_e1_labels==17,1,'last'),:);

% Subject 6, Exercise 2
s6_e2_data = load("DB2_s6\S6_E2_A1.mat","emg");
s6_e2_labels = load("DB2_s6\S6_E2_A1.mat","restimulus");
s6_e2_data = s6_e2_data.emg;    % Extract emg data
s6_e2_labels = s6_e2_labels.restimulus; % Extract labels
s6_e2_data = s6_e2_data(1:find(s6_e2_labels==40,1,'last'),:);
s6_e2_labels = s6_e2_labels(1:find(s6_e2_labels==40,1,'last'),:);

% Subject 6, Exercise 3
s6_e3_data = load("DB2_s6\S6_E3_A1.mat","emg");
s6_e3_labels = load("DB2_s6\S6_E3_A1.mat","restimulus");
s6_e3_data = s6_e3_data.emg;    % Extract emg data
s6_e3_labels = s6_e3_labels.restimulus; % Extract labels
s6_e3_data = s6_e3_data(1:end,:);
s6_e3_labels = s6_e3_labels(1:end,:);

% Concatenate data for Subject 6
s6_data = [s6_e1_data; s6_e2_data; s6_e3_data];
s6_labels = [s6_e1_labels; s6_e2_labels; s6_e3_labels];
clear s6_e1_data s6_e2_data s6_e1_labels s6_e2_labels s6_e3_labels s6_e3_data
%%
% Subject 7, Exercise 1
s7_e1_data = load("DB2_s7\S7_E1_A1.mat","emg");
s7_e1_labels = load("DB2_s7\S7_E1_A1.mat","restimulus");
s7_e1_data = s7_e1_data.emg;    % Extract emg data
s7_e1_labels = s7_e1_labels.restimulus; % Extract labels
s7_e1_data = s7_e1_data(1:find(s7_e1_labels==17,1,'last'),:);
s7_e1_labels = s7_e1_labels(1:find(s7_e1_labels==17,1,'last'),:);

% Subject 7, Exercise 2
s7_e2_data = load("DB2_s7\S7_E2_A1.mat","emg");
s7_e2_labels = load("DB2_s7\S7_E2_A1.mat","restimulus");
s7_e2_data = s7_e2_data.emg;    % Extract emg data
s7_e2_labels = s7_e2_labels.restimulus; % Extract labels
s7_e2_data = s7_e2_data(1:find(s7_e2_labels==40,1,'last'),:);
s7_e2_labels = s7_e2_labels(1:find(s7_e2_labels==40,1,'last'),:);

% Subject 7, Exercise 3
s7_e3_data = load("DB2_s7\S7_E3_A1.mat","emg");
s7_e3_labels = load("DB2_s7\S7_E3_A1.mat","restimulus");
s7_e3_data = s7_e3_data.emg;    % Extract emg data
s7_e3_labels = s7_e3_labels.restimulus; % Extract labels
s7_e3_data = s7_e3_data(1:end,:);
s7_e3_labels = s7_e3_labels(1:end,:);

% Concatenate data for Subject 7
s7_data = [s7_e1_data; s7_e2_data; s7_e3_data];
s7_labels = [s7_e1_labels; s7_e2_labels; s7_e3_labels];
clear s7_e1_data s7_e2_data s7_e1_labels s7_e2_labels s7_e3_labels s7_e3_data
%%
% Subject 8, Exercise 1
s8_e1_data = load("DB2_s8\S8_E1_A1.mat","emg");
s8_e1_labels = load("DB2_s8\S8_E1_A1.mat","restimulus");
s8_e1_data = s8_e1_data.emg;    % Extract emg data
s8_e1_labels = s8_e1_labels.restimulus; % Extract labels
s8_e1_data = s8_e1_data(1:find(s8_e1_labels==17,1,'last'),:);
s8_e1_labels = s8_e1_labels(1:find(s8_e1_labels==17,1,'last'),:);

% Subject 8, Exercise 2
s8_e2_data = load("DB2_s8\S8_E2_A1.mat","emg");
s8_e2_labels = load("DB2_s8\S8_E2_A1.mat","restimulus");
s8_e2_data = s8_e2_data.emg;    % Extract emg data
s8_e2_labels = s8_e2_labels.restimulus; % Extract labels
s8_e2_data = s8_e2_data(1:find(s8_e2_labels==40,1,'last'),:);
s8_e2_labels = s8_e2_labels(1:find(s8_e2_labels==40,1,'last'),:);

% Subject 8, Exercise 3
s8_e3_data = load("DB2_s8\S8_E3_A1.mat","emg");
s8_e3_labels = load("DB2_s8\S8_E3_A1.mat","restimulus");
s8_e3_data = s8_e3_data.emg;    % Extract emg data
s8_e3_labels = s8_e3_labels.restimulus; % Extract labels
s8_e3_data = s8_e3_data(1:end,:);
s8_e3_labels = s8_e3_labels(1:end,:);

% Concatenate data for Subject 8
s8_data = [s8_e1_data; s8_e2_data; s8_e3_data];
s8_labels = [s8_e1_labels; s8_e2_labels; s8_e3_labels];
clear s8_e1_data s8_e2_data s8_e1_labels s8_e2_labels s8_e3_labels s8_e3_data
%%
% Subject 9, Exercise 1
s9_e1_data = load("DB2_s9\S9_E1_A1.mat","emg");
s9_e1_labels = load("DB2_s9\S9_E1_A1.mat","restimulus");
s9_e1_data = s9_e1_data.emg;    % Extract emg data
s9_e1_labels = s9_e1_labels.restimulus; % Extract labels
s9_e1_data = s9_e1_data(1:find(s9_e1_labels==17,1,'last'),:);
s9_e1_labels = s9_e1_labels(1:find(s9_e1_labels==17,1,'last'),:);

% Subject 9, Exercise 2
s9_e2_data = load("DB2_s9\S9_E2_A1.mat","emg");
s9_e2_labels = load("DB2_s9\S9_E2_A1.mat","restimulus");
s9_e2_data = s9_e2_data.emg;    % Extract emg data
s9_e2_labels = s9_e2_labels.restimulus; % Extract labels
s9_e2_data = s9_e2_data(1:find(s9_e2_labels==40,1,'last'),:);
s9_e2_labels = s9_e2_labels(1:find(s9_e2_labels==40,1,'last'),:);

% Subject 9, Exercise 3
s9_e3_data = load("DB2_s9\S9_E3_A1.mat","emg");
s9_e3_labels = load("DB2_s9\S9_E3_A1.mat","restimulus");
s9_e3_data = s9_e3_data.emg;    % Extract emg data
s9_e3_labels = s9_e3_labels.restimulus; % Extract labels
s9_e3_data = s9_e3_data(1:end,:);
s9_e3_labels = s9_e3_labels(1:end,:);

% Concatenate data for Subject 9
s9_data = [s9_e1_data; s9_e2_data; s9_e3_data];
s9_labels = [s9_e1_labels; s9_e2_labels; s9_e3_labels];
clear s9_e1_data s9_e2_data s9_e1_labels s9_e2_labels s9_e3_labels s9_e3_data
%%
% Subject 10, Exercise 1
s10_e1_data = load("DB2_s10\S10_E1_A1.mat","emg");
s10_e1_labels = load("DB2_s10\S10_E1_A1.mat","restimulus");
s10_e1_data = s10_e1_data.emg;    % Extract emg data
s10_e1_labels = s10_e1_labels.restimulus; % Extract labels
s10_e1_data = s10_e1_data(1:find(s10_e1_labels==17,1,'last'),:);
s10_e1_labels = s10_e1_labels(1:find(s10_e1_labels==17,1,'last'),:);

% Subject 10, Exercise 2
s10_e2_data = load("DB2_s10\S10_E2_A1.mat","emg");
s10_e2_labels = load("DB2_s10\S10_E2_A1.mat","restimulus");
s10_e2_data = s10_e2_data.emg;    % Extract emg data
s10_e2_labels = s10_e2_labels.restimulus; % Extract labels
s10_e2_data = s10_e2_data(1:find(s10_e2_labels==40,1,'last'),:);
s10_e2_labels = s10_e2_labels(1:find(s10_e2_labels==40,1,'last'),:);

% Subject 10, Exercise 3
s10_e3_data = load("DB2_s10\S10_E3_A1.mat","emg");
s10_e3_labels = load("DB2_s10\S10_E3_A1.mat","restimulus");
s10_e3_data = s10_e3_data.emg;    % Extract emg data
s10_e3_labels = s10_e3_labels.restimulus; % Extract labels
s10_e3_data = s10_e3_data(1:end,:);
s10_e3_labels = s10_e3_labels(1:end,:);

% Concatenate data for Subject 10
s10_data = [s10_e1_data; s10_e2_data; s10_e3_data];
s10_labels = [s10_e1_labels; s10_e2_labels; s10_e3_labels];
clear s10_e1_data s10_e2_data s10_e1_labels s10_e2_labels s10_e3_labels s10_e3_data