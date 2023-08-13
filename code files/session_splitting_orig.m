function [session_1,session_2,session_3,session_4,session_5,session_6] = session_splitting_orig(data,labels)

% 1st gesture - 1st repetition
gest_1_rep_1_lbl = labels(1:find(labels==1,1)-1);
gest_1_rep_1_data = data(1:find(labels==1,1)-1,:);
data = data(find(labels==1,1):end,:);
labels = labels(find(labels==1,1):end);
gest_1_rep_1_lbl = [gest_1_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_1_rep_1_data = [gest_1_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 1st gesture - 2nd repetition
gest_1_rep_2_lbl = labels(1:find(labels==1,1)-1);
gest_1_rep_2_data = data(1:find(labels==1,1)-1,:);
data = data(find(labels==1,1):end,:);
labels = labels(find(labels==1,1):end);
gest_1_rep_2_lbl = [gest_1_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_1_rep_2_data = [gest_1_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 1st gesture - 3rd repetition
gest_1_rep_3_lbl = labels(1:find(labels==1,1)-1);
gest_1_rep_3_data = data(1:find(labels==1,1)-1,:);
data = data(find(labels==1,1):end,:);
labels = labels(find(labels==1,1):end);
gest_1_rep_3_lbl = [gest_1_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_1_rep_3_data = [gest_1_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 1st gesture - 4th repetition
gest_1_rep_4_lbl = labels(1:find(labels==1,1)-1);
gest_1_rep_4_data = data(1:find(labels==1,1)-1,:);
data = data(find(labels==1,1):end,:);
labels = labels(find(labels==1,1):end);
gest_1_rep_4_lbl = [gest_1_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_1_rep_4_data = [gest_1_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 1st gesture - 5th repetition
gest_1_rep_5_lbl = labels(1:find(labels==1,1)-1);
gest_1_rep_5_data = data(1:find(labels==1,1)-1,:);
data = data(find(labels==1,1):end,:);
labels = labels(find(labels==1,1):end);
gest_1_rep_5_lbl = [gest_1_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_1_rep_5_data = [gest_1_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 1st gesture - 6th repetition
gest_1_rep_6_lbl = labels(1:find(labels==1,1)-1);
gest_1_rep_6_data = data(1:find(labels==1,1)-1,:);
data = data(find(labels==1,1):end,:);
labels = labels(find(labels==1,1):end);
gest_1_rep_6_lbl = [gest_1_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_1_rep_6_data = [gest_1_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);


%----------------------------------------------
% 2nd gesture - 1st repetition
gest_2_rep_1_lbl = labels(1:find(labels==2,1)-1);
gest_2_rep_1_data = data(1:find(labels==2,1)-1,:);
data = data(find(labels==2,1):end,:);
labels = labels(find(labels==2,1):end);
gest_2_rep_1_lbl = [gest_2_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_2_rep_1_data = [gest_2_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 2nd gesture - 2nd repetition
gest_2_rep_2_lbl = labels(1:find(labels==2,1)-1);
gest_2_rep_2_data = data(1:find(labels==2,1)-1,:);
data = data(find(labels==2,1):end,:);
labels = labels(find(labels==2,1):end);
gest_2_rep_2_lbl = [gest_2_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_2_rep_2_data = [gest_2_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 2nd gesture - 3rd repetition
gest_2_rep_3_lbl = labels(1:find(labels==2,1)-1);
gest_2_rep_3_data = data(1:find(labels==2,1)-1,:);
data = data(find(labels==2,1):end,:);
labels = labels(find(labels==2,1):end);
gest_2_rep_3_lbl = [gest_2_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_2_rep_3_data = [gest_2_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 2nd gesture - 4th repetition
gest_2_rep_4_lbl = labels(1:find(labels==2,1)-1);
gest_2_rep_4_data = data(1:find(labels==2,1)-1,:);
data = data(find(labels==2,1):end,:);
labels = labels(find(labels==2,1):end);
gest_2_rep_4_lbl = [gest_2_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_2_rep_4_data = [gest_2_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 2nd gesture - 5th repetition
gest_2_rep_5_lbl = labels(1:find(labels==2,1)-1);
gest_2_rep_5_data = data(1:find(labels==2,1)-1,:);
data = data(find(labels==2,1):end,:);
labels = labels(find(labels==2,1):end);
gest_2_rep_5_lbl = [gest_2_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_2_rep_5_data = [gest_2_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 2nd gesture - 6th repetition
gest_2_rep_6_lbl = labels(1:find(labels==2,1)-1);
gest_2_rep_6_data = data(1:find(labels==2,1)-1,:);
data = data(find(labels==2,1):end,:);
labels = labels(find(labels==2,1):end);
gest_2_rep_6_lbl = [gest_2_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_2_rep_6_data = [gest_2_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 3rd gesture - 1st repetition
gest_3_rep_1_lbl = labels(1:find(labels==3,1)-1);
gest_3_rep_1_data = data(1:find(labels==3,1)-1,:);
data = data(find(labels==3,1):end,:);
labels = labels(find(labels==3,1):end);
gest_3_rep_1_lbl = [gest_3_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_3_rep_1_data = [gest_3_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 3rd gesture - 2nd repetition
gest_3_rep_2_lbl = labels(1:find(labels==3,1)-1);
gest_3_rep_2_data = data(1:find(labels==3,1)-1,:);
data = data(find(labels==3,1):end,:);
labels = labels(find(labels==3,1):end);
gest_3_rep_2_lbl = [gest_3_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_3_rep_2_data = [gest_3_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 3rd gesture - 3rd repetition
gest_3_rep_3_lbl = labels(1:find(labels==3,1)-1);
gest_3_rep_3_data = data(1:find(labels==3,1)-1,:);
data = data(find(labels==3,1):end,:);
labels = labels(find(labels==3,1):end);
gest_3_rep_3_lbl = [gest_3_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_3_rep_3_data = [gest_3_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 3rd gesture - 4th repetition
gest_3_rep_4_lbl = labels(1:find(labels==3,1)-1);
gest_3_rep_4_data = data(1:find(labels==3,1)-1,:);
data = data(find(labels==3,1):end,:);
labels = labels(find(labels==3,1):end);
gest_3_rep_4_lbl = [gest_3_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_3_rep_4_data = [gest_3_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 3rd gesture - 5th repetition
gest_3_rep_5_lbl = labels(1:find(labels==3,1)-1);
gest_3_rep_5_data = data(1:find(labels==3,1)-1,:);
data = data(find(labels==3,1):end,:);
labels = labels(find(labels==3,1):end);
gest_3_rep_5_lbl = [gest_3_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_3_rep_5_data = [gest_3_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 3rd gesture - 6th repetition
gest_3_rep_6_lbl = labels(1:find(labels==3,1)-1);
gest_3_rep_6_data = data(1:find(labels==3,1)-1,:);
data = data(find(labels==3,1):end,:);
labels = labels(find(labels==3,1):end);
gest_3_rep_6_lbl = [gest_3_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_3_rep_6_data = [gest_3_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 4th gesture - 1st repetition
gest_4_rep_1_lbl = labels(1:find(labels==4,1)-1);
gest_4_rep_1_data = data(1:find(labels==4,1)-1,:);
data = data(find(labels==4,1):end,:);
labels = labels(find(labels==4,1):end);
gest_4_rep_1_lbl = [gest_4_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_4_rep_1_data = [gest_4_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 4th gesture - 2nd repetition
gest_4_rep_2_lbl = labels(1:find(labels==4,1)-1);
gest_4_rep_2_data = data(1:find(labels==4,1)-1,:);
data = data(find(labels==4,1):end,:);
labels = labels(find(labels==4,1):end);
gest_4_rep_2_lbl = [gest_4_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_4_rep_2_data = [gest_4_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 4th gesture - 3rd repetition
gest_4_rep_3_lbl = labels(1:find(labels==4,1)-1);
gest_4_rep_3_data = data(1:find(labels==4,1)-1,:);
data = data(find(labels==4,1):end,:);
labels = labels(find(labels==4,1):end);
gest_4_rep_3_lbl = [gest_4_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_4_rep_3_data = [gest_4_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 4th gesture - 4th repetition
gest_4_rep_4_lbl = labels(1:find(labels==4,1)-1);
gest_4_rep_4_data = data(1:find(labels==4,1)-1,:);
data = data(find(labels==4,1):end,:);
labels = labels(find(labels==4,1):end);
gest_4_rep_4_lbl = [gest_4_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_4_rep_4_data = [gest_4_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 4th gesture - 5th repetition
gest_4_rep_5_lbl = labels(1:find(labels==4,1)-1);
gest_4_rep_5_data = data(1:find(labels==4,1)-1,:);
data = data(find(labels==4,1):end,:);
labels = labels(find(labels==4,1):end);
gest_4_rep_5_lbl = [gest_4_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_4_rep_5_data = [gest_4_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 4th gesture - 6th repetition
gest_4_rep_6_lbl = labels(1:find(labels==4,1)-1);
gest_4_rep_6_data = data(1:find(labels==4,1)-1,:);
data = data(find(labels==4,1):end,:);
labels = labels(find(labels==4,1):end);
gest_4_rep_6_lbl = [gest_4_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_4_rep_6_data = [gest_4_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 5th gesture - 1st repetition
gest_5_rep_1_lbl = labels(1:find(labels==5,1)-1);
gest_5_rep_1_data = data(1:find(labels==5,1)-1,:);
data = data(find(labels==5,1):end,:);
labels = labels(find(labels==5,1):end);
gest_5_rep_1_lbl = [gest_5_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_5_rep_1_data = [gest_5_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 5th gesture - 2nd repetition
gest_5_rep_2_lbl = labels(1:find(labels==5,1)-1);
gest_5_rep_2_data = data(1:find(labels==5,1)-1,:);
data = data(find(labels==5,1):end,:);
labels = labels(find(labels==5,1):end);
gest_5_rep_2_lbl = [gest_5_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_5_rep_2_data = [gest_5_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 5th gesture - 3rd repetition
gest_5_rep_3_lbl = labels(1:find(labels==5,1)-1);
gest_5_rep_3_data = data(1:find(labels==5,1)-1,:);
data = data(find(labels==5,1):end,:);
labels = labels(find(labels==5,1):end);
gest_5_rep_3_lbl = [gest_5_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_5_rep_3_data = [gest_5_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 5th gesture - 4th repetition
gest_5_rep_4_lbl = labels(1:find(labels==5,1)-1);
gest_5_rep_4_data = data(1:find(labels==5,1)-1,:);
data = data(find(labels==5,1):end,:);
labels = labels(find(labels==5,1):end);
gest_5_rep_4_lbl = [gest_5_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_5_rep_4_data = [gest_5_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 5th gesture - 5th repetition
gest_5_rep_5_lbl = labels(1:find(labels==5,1)-1);
gest_5_rep_5_data = data(1:find(labels==5,1)-1,:);
data = data(find(labels==5,1):end,:);
labels = labels(find(labels==5,1):end);
gest_5_rep_5_lbl = [gest_5_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_5_rep_5_data = [gest_5_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 5th gesture - 6th repetition
gest_5_rep_6_lbl = labels(1:find(labels==5,1)-1);
gest_5_rep_6_data = data(1:find(labels==5,1)-1,:);
data = data(find(labels==5,1):end,:);
labels = labels(find(labels==5,1):end);
gest_5_rep_6_lbl = [gest_5_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_5_rep_6_data = [gest_5_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 6th gesture - 1st repetition
gest_6_rep_1_lbl = labels(1:find(labels==6,1)-1);
gest_6_rep_1_data = data(1:find(labels==6,1)-1,:);
data = data(find(labels==6,1):end,:);
labels = labels(find(labels==6,1):end);
gest_6_rep_1_lbl = [gest_6_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_6_rep_1_data = [gest_6_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 6th gesture - 2nd repetition
gest_6_rep_2_lbl = labels(1:find(labels==6,1)-1);
gest_6_rep_2_data = data(1:find(labels==6,1)-1,:);
data = data(find(labels==6,1):end,:);
labels = labels(find(labels==6,1):end);
gest_6_rep_2_lbl = [gest_6_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_6_rep_2_data = [gest_6_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 6th gesture - 3rd repetition
gest_6_rep_3_lbl = labels(1:find(labels==6,1)-1);
gest_6_rep_3_data = data(1:find(labels==6,1)-1,:);
data = data(find(labels==6,1):end,:);
labels = labels(find(labels==6,1):end);
gest_6_rep_3_lbl = [gest_6_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_6_rep_3_data = [gest_6_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 6th gesture - 4th repetition
gest_6_rep_4_lbl = labels(1:find(labels==6,1)-1);
gest_6_rep_4_data = data(1:find(labels==6,1)-1,:);
data = data(find(labels==6,1):end,:);
labels = labels(find(labels==6,1):end);
gest_6_rep_4_lbl = [gest_6_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_6_rep_4_data = [gest_6_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 6th gesture - 5th repetition
gest_6_rep_5_lbl = labels(1:find(labels==6,1)-1);
gest_6_rep_5_data = data(1:find(labels==6,1)-1,:);
data = data(find(labels==6,1):end,:);
labels = labels(find(labels==6,1):end);
gest_6_rep_5_lbl = [gest_6_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_6_rep_5_data = [gest_6_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 6th gesture - 6th repetition
gest_6_rep_6_lbl = labels(1:find(labels==6,1)-1);
gest_6_rep_6_data = data(1:find(labels==6,1)-1,:);
data = data(find(labels==6,1):end,:);
labels = labels(find(labels==6,1):end);
gest_6_rep_6_lbl = [gest_6_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_6_rep_6_data = [gest_6_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 7th gesture - 1st repetition
gest_7_rep_1_lbl = labels(1:find(labels==7,1)-1);
gest_7_rep_1_data = data(1:find(labels==7,1)-1,:);
data = data(find(labels==7,1):end,:);
labels = labels(find(labels==7,1):end);
gest_7_rep_1_lbl = [gest_7_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_7_rep_1_data = [gest_7_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 7th gesture - 2nd repetition
gest_7_rep_2_lbl = labels(1:find(labels==7,1)-1);
gest_7_rep_2_data = data(1:find(labels==7,1)-1,:);
data = data(find(labels==7,1):end,:);
labels = labels(find(labels==7,1):end);
gest_7_rep_2_lbl = [gest_7_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_7_rep_2_data = [gest_7_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 7th gesture - 3rd repetition
gest_7_rep_3_lbl = labels(1:find(labels==7,1)-1);
gest_7_rep_3_data = data(1:find(labels==7,1)-1,:);
data = data(find(labels==7,1):end,:);
labels = labels(find(labels==7,1):end);
gest_7_rep_3_lbl = [gest_7_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_7_rep_3_data = [gest_7_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 7th gesture - 4th repetition
gest_7_rep_4_lbl = labels(1:find(labels==7,1)-1);
gest_7_rep_4_data = data(1:find(labels==7,1)-1,:);
data = data(find(labels==7,1):end,:);
labels = labels(find(labels==7,1):end);
gest_7_rep_4_lbl = [gest_7_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_7_rep_4_data = [gest_7_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 7th gesture - 5th repetition
gest_7_rep_5_lbl = labels(1:find(labels==7,1)-1);
gest_7_rep_5_data = data(1:find(labels==7,1)-1,:);
data = data(find(labels==7,1):end,:);
labels = labels(find(labels==7,1):end);
gest_7_rep_5_lbl = [gest_7_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_7_rep_5_data = [gest_7_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 7th gesture - 6th repetition
gest_7_rep_6_lbl = labels(1:find(labels==7,1)-1);
gest_7_rep_6_data = data(1:find(labels==7,1)-1,:);
data = data(find(labels==7,1):end,:);
labels = labels(find(labels==7,1):end);
gest_7_rep_6_lbl = [gest_7_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_7_rep_6_data = [gest_7_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 8th gesture - 1st repetition
gest_8_rep_1_lbl = labels(1:find(labels==8,1)-1);
gest_8_rep_1_data = data(1:find(labels==8,1)-1,:);
data = data(find(labels==8,1):end,:);
labels = labels(find(labels==8,1):end);
gest_8_rep_1_lbl = [gest_8_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_8_rep_1_data = [gest_8_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 8th gesture - 2nd repetition
gest_8_rep_2_lbl = labels(1:find(labels==8,1)-1);
gest_8_rep_2_data = data(1:find(labels==8,1)-1,:);
data = data(find(labels==8,1):end,:);
labels = labels(find(labels==8,1):end);
gest_8_rep_2_lbl = [gest_8_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_8_rep_2_data = [gest_8_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 8th gesture - 3rd repetition
gest_8_rep_3_lbl = labels(1:find(labels==8,1)-1);
gest_8_rep_3_data = data(1:find(labels==8,1)-1,:);
data = data(find(labels==8,1):end,:);
labels = labels(find(labels==8,1):end);
gest_8_rep_3_lbl = [gest_8_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_8_rep_3_data = [gest_8_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 8th gesture - 4th repetition
gest_8_rep_4_lbl = labels(1:find(labels==8,1)-1);
gest_8_rep_4_data = data(1:find(labels==8,1)-1,:);
data = data(find(labels==8,1):end,:);
labels = labels(find(labels==8,1):end);
gest_8_rep_4_lbl = [gest_8_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_8_rep_4_data = [gest_8_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 8th gesture - 5th repetition
gest_8_rep_5_lbl = labels(1:find(labels==8,1)-1);
gest_8_rep_5_data = data(1:find(labels==8,1)-1,:);
data = data(find(labels==8,1):end,:);
labels = labels(find(labels==8,1):end);
gest_8_rep_5_lbl = [gest_8_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_8_rep_5_data = [gest_8_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 8th gesture - 6th repetition
gest_8_rep_6_lbl = labels(1:find(labels==8,1)-1);
gest_8_rep_6_data = data(1:find(labels==8,1)-1,:);
data = data(find(labels==8,1):end,:);
labels = labels(find(labels==8,1):end);
gest_8_rep_6_lbl = [gest_8_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_8_rep_6_data = [gest_8_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 9th gesture - 1st repetition
gest_9_rep_1_lbl = labels(1:find(labels==9,1)-1);
gest_9_rep_1_data = data(1:find(labels==9,1)-1,:);
data = data(find(labels==9,1):end,:);
labels = labels(find(labels==9,1):end);
gest_9_rep_1_lbl = [gest_9_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_9_rep_1_data = [gest_9_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 9th gesture - 2nd repetition
gest_9_rep_2_lbl = labels(1:find(labels==9,1)-1);
gest_9_rep_2_data = data(1:find(labels==9,1)-1,:);
data = data(find(labels==9,1):end,:);
labels = labels(find(labels==9,1):end);
gest_9_rep_2_lbl = [gest_9_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_9_rep_2_data = [gest_9_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 9th gesture - 3rd repetition
gest_9_rep_3_lbl = labels(1:find(labels==9,1)-1);
gest_9_rep_3_data = data(1:find(labels==9,1)-1,:);
data = data(find(labels==9,1):end,:);
labels = labels(find(labels==9,1):end);
gest_9_rep_3_lbl = [gest_9_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_9_rep_3_data = [gest_9_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 9th gesture - 4th repetition
gest_9_rep_4_lbl = labels(1:find(labels==9,1)-1);
gest_9_rep_4_data = data(1:find(labels==9,1)-1,:);
data = data(find(labels==9,1):end,:);
labels = labels(find(labels==9,1):end);
gest_9_rep_4_lbl = [gest_9_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_9_rep_4_data = [gest_9_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 9th gesture - 5th repetition
gest_9_rep_5_lbl = labels(1:find(labels==9,1)-1);
gest_9_rep_5_data = data(1:find(labels==9,1)-1,:);
data = data(find(labels==9,1):end,:);
labels = labels(find(labels==9,1):end);
gest_9_rep_5_lbl = [gest_9_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_9_rep_5_data = [gest_9_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 9th gesture - 6th repetition
gest_9_rep_6_lbl = labels(1:find(labels==9,1)-1);
gest_9_rep_6_data = data(1:find(labels==9,1)-1,:);
data = data(find(labels==9,1):end,:);
labels = labels(find(labels==9,1):end);
gest_9_rep_6_lbl = [gest_9_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_9_rep_6_data = [gest_9_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 10th gesture - 1st repetition
gest_10_rep_1_lbl = labels(1:find(labels==10,1)-1);
gest_10_rep_1_data = data(1:find(labels==10,1)-1,:);
data = data(find(labels==10,1):end,:);
labels = labels(find(labels==10,1):end);
gest_10_rep_1_lbl = [gest_10_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_10_rep_1_data = [gest_10_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 10th gesture - 2nd repetition
gest_10_rep_2_lbl = labels(1:find(labels==10,1)-1);
gest_10_rep_2_data = data(1:find(labels==10,1)-1,:);
data = data(find(labels==10,1):end,:);
labels = labels(find(labels==10,1):end);
gest_10_rep_2_lbl = [gest_10_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_10_rep_2_data = [gest_10_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 10th gesture - 3rd repetition
gest_10_rep_3_lbl = labels(1:find(labels==10,1)-1);
gest_10_rep_3_data = data(1:find(labels==10,1)-1,:);
data = data(find(labels==10,1):end,:);
labels = labels(find(labels==10,1):end);
gest_10_rep_3_lbl = [gest_10_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_10_rep_3_data = [gest_10_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 10th gesture - 4th repetition
gest_10_rep_4_lbl = labels(1:find(labels==10,1)-1);
gest_10_rep_4_data = data(1:find(labels==10,1)-1,:);
data = data(find(labels==10,1):end,:);
labels = labels(find(labels==10,1):end);
gest_10_rep_4_lbl = [gest_10_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_10_rep_4_data = [gest_10_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 10th gesture - 5th repetition
gest_10_rep_5_lbl = labels(1:find(labels==10,1)-1);
gest_10_rep_5_data = data(1:find(labels==10,1)-1,:);
data = data(find(labels==10,1):end,:);
labels = labels(find(labels==10,1):end);
gest_10_rep_5_lbl = [gest_10_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_10_rep_5_data = [gest_10_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 10th gesture - 6th repetition
gest_10_rep_6_lbl = labels(1:find(labels==10,1)-1);
gest_10_rep_6_data = data(1:find(labels==10,1)-1,:);
data = data(find(labels==10,1):end,:);
labels = labels(find(labels==10,1):end);
gest_10_rep_6_lbl = [gest_10_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_10_rep_6_data = [gest_10_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 11th gesture - 1st repetition
gest_11_rep_1_lbl = labels(1:find(labels==11,1)-1);
gest_11_rep_1_data = data(1:find(labels==11,1)-1,:);
data = data(find(labels==11,1):end,:);
labels = labels(find(labels==11,1):end);
gest_11_rep_1_lbl = [gest_11_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_11_rep_1_data = [gest_11_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 11th gesture - 2nd repetition
gest_11_rep_2_lbl = labels(1:find(labels==11,1)-1);
gest_11_rep_2_data = data(1:find(labels==11,1)-1,:);
data = data(find(labels==11,1):end,:);
labels = labels(find(labels==11,1):end);
gest_11_rep_2_lbl = [gest_11_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_11_rep_2_data = [gest_11_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 11th gesture - 3rd repetition
gest_11_rep_3_lbl = labels(1:find(labels==11,1)-1);
gest_11_rep_3_data = data(1:find(labels==11,1)-1,:);
data = data(find(labels==11,1):end,:);
labels = labels(find(labels==11,1):end);
gest_11_rep_3_lbl = [gest_11_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_11_rep_3_data = [gest_11_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 11th gesture - 4th repetition
gest_11_rep_4_lbl = labels(1:find(labels==11,1)-1);
gest_11_rep_4_data = data(1:find(labels==11,1)-1,:);
data = data(find(labels==11,1):end,:);
labels = labels(find(labels==11,1):end);
gest_11_rep_4_lbl = [gest_11_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_11_rep_4_data = [gest_11_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 11th gesture - 5th repetition
gest_11_rep_5_lbl = labels(1:find(labels==11,1)-1);
gest_11_rep_5_data = data(1:find(labels==11,1)-1,:);
data = data(find(labels==11,1):end,:);
labels = labels(find(labels==11,1):end);
gest_11_rep_5_lbl = [gest_11_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_11_rep_5_data = [gest_11_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 11th gesture - 6th repetition
gest_11_rep_6_lbl = labels(1:find(labels==11,1)-1);
gest_11_rep_6_data = data(1:find(labels==11,1)-1,:);
data = data(find(labels==11,1):end,:);
labels = labels(find(labels==11,1):end);
gest_11_rep_6_lbl = [gest_11_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_11_rep_6_data = [gest_11_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 12th gesture - 1st repetition
gest_12_rep_1_lbl = labels(1:find(labels==12,1)-1);
gest_12_rep_1_data = data(1:find(labels==12,1)-1,:);
data = data(find(labels==12,1):end,:);
labels = labels(find(labels==12,1):end);
gest_12_rep_1_lbl = [gest_12_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_12_rep_1_data = [gest_12_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 12th gesture - 2nd repetition
gest_12_rep_2_lbl = labels(1:find(labels==12,1)-1);
gest_12_rep_2_data = data(1:find(labels==12,1)-1,:);
data = data(find(labels==12,1):end,:);
labels = labels(find(labels==12,1):end);
gest_12_rep_2_lbl = [gest_12_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_12_rep_2_data = [gest_12_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 12th gesture - 3rd repetition
gest_12_rep_3_lbl = labels(1:find(labels==12,1)-1);
gest_12_rep_3_data = data(1:find(labels==12,1)-1,:);
data = data(find(labels==12,1):end,:);
labels = labels(find(labels==12,1):end);
gest_12_rep_3_lbl = [gest_12_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_12_rep_3_data = [gest_12_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 12th gesture - 4th repetition
gest_12_rep_4_lbl = labels(1:find(labels==12,1)-1);
gest_12_rep_4_data = data(1:find(labels==12,1)-1,:);
data = data(find(labels==12,1):end,:);
labels = labels(find(labels==12,1):end);
gest_12_rep_4_lbl = [gest_12_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_12_rep_4_data = [gest_12_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 12th gesture - 5th repetition
gest_12_rep_5_lbl = labels(1:find(labels==12,1)-1);
gest_12_rep_5_data = data(1:find(labels==12,1)-1,:);
data = data(find(labels==12,1):end,:);
labels = labels(find(labels==12,1):end);
gest_12_rep_5_lbl = [gest_12_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_12_rep_5_data = [gest_12_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 12th gesture - 6th repetition
gest_12_rep_6_lbl = labels(1:find(labels==12,1)-1);
gest_12_rep_6_data = data(1:find(labels==12,1)-1,:);
data = data(find(labels==12,1):end,:);
labels = labels(find(labels==12,1):end);
gest_12_rep_6_lbl = [gest_12_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_12_rep_6_data = [gest_12_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 13th gesture - 1st repetition
gest_13_rep_1_lbl = labels(1:find(labels==13,1)-1);
gest_13_rep_1_data = data(1:find(labels==13,1)-1,:);
data = data(find(labels==13,1):end,:);
labels = labels(find(labels==13,1):end);
gest_13_rep_1_lbl = [gest_13_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_13_rep_1_data = [gest_13_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 13th gesture - 2nd repetition
gest_13_rep_2_lbl = labels(1:find(labels==13,1)-1);
gest_13_rep_2_data = data(1:find(labels==13,1)-1,:);
data = data(find(labels==13,1):end,:);
labels = labels(find(labels==13,1):end);
gest_13_rep_2_lbl = [gest_13_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_13_rep_2_data = [gest_13_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 13th gesture - 3rd repetition
gest_13_rep_3_lbl = labels(1:find(labels==13,1)-1);
gest_13_rep_3_data = data(1:find(labels==13,1)-1,:);
data = data(find(labels==13,1):end,:);
labels = labels(find(labels==13,1):end);
gest_13_rep_3_lbl = [gest_13_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_13_rep_3_data = [gest_13_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 13th gesture - 4th repetition
gest_13_rep_4_lbl = labels(1:find(labels==13,1)-1);
gest_13_rep_4_data = data(1:find(labels==13,1)-1,:);
data = data(find(labels==13,1):end,:);
labels = labels(find(labels==13,1):end);
gest_13_rep_4_lbl = [gest_13_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_13_rep_4_data = [gest_13_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 13th gesture - 5th repetition
gest_13_rep_5_lbl = labels(1:find(labels==13,1)-1);
gest_13_rep_5_data = data(1:find(labels==13,1)-1,:);
data = data(find(labels==13,1):end,:);
labels = labels(find(labels==13,1):end);
gest_13_rep_5_lbl = [gest_13_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_13_rep_5_data = [gest_13_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 13th gesture - 6th repetition
gest_13_rep_6_lbl = labels(1:find(labels==13,1)-1);
gest_13_rep_6_data = data(1:find(labels==13,1)-1,:);
data = data(find(labels==13,1):end,:);
labels = labels(find(labels==13,1):end);
gest_13_rep_6_lbl = [gest_13_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_13_rep_6_data = [gest_13_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 14th gesture - 1st repetition
gest_14_rep_1_lbl = labels(1:find(labels==14,1)-1);
gest_14_rep_1_data = data(1:find(labels==14,1)-1,:);
data = data(find(labels==14,1):end,:);
labels = labels(find(labels==14,1):end);
gest_14_rep_1_lbl = [gest_14_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_14_rep_1_data = [gest_14_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 14th gesture - 2nd repetition
gest_14_rep_2_lbl = labels(1:find(labels==14,1)-1);
gest_14_rep_2_data = data(1:find(labels==14,1)-1,:);
data = data(find(labels==14,1):end,:);
labels = labels(find(labels==14,1):end);
gest_14_rep_2_lbl = [gest_14_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_14_rep_2_data = [gest_14_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 14th gesture - 3rd repetition
gest_14_rep_3_lbl = labels(1:find(labels==14,1)-1);
gest_14_rep_3_data = data(1:find(labels==14,1)-1,:);
data = data(find(labels==14,1):end,:);
labels = labels(find(labels==14,1):end);
gest_14_rep_3_lbl = [gest_14_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_14_rep_3_data = [gest_14_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 14th gesture - 4th repetition
gest_14_rep_4_lbl = labels(1:find(labels==14,1)-1);
gest_14_rep_4_data = data(1:find(labels==14,1)-1,:);
data = data(find(labels==14,1):end,:);
labels = labels(find(labels==14,1):end);
gest_14_rep_4_lbl = [gest_14_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_14_rep_4_data = [gest_14_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 14th gesture - 5th repetition
gest_14_rep_5_lbl = labels(1:find(labels==14,1)-1);
gest_14_rep_5_data = data(1:find(labels==14,1)-1,:);
data = data(find(labels==14,1):end,:);
labels = labels(find(labels==14,1):end);
gest_14_rep_5_lbl = [gest_14_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_14_rep_5_data = [gest_14_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 14th gesture - 6th repetition
gest_14_rep_6_lbl = labels(1:find(labels==14,1)-1);
gest_14_rep_6_data = data(1:find(labels==14,1)-1,:);
data = data(find(labels==14,1):end,:);
labels = labels(find(labels==14,1):end);
gest_14_rep_6_lbl = [gest_14_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_14_rep_6_data = [gest_14_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 15th gesture - 1st repetition
gest_15_rep_1_lbl = labels(1:find(labels==15,1)-1);
gest_15_rep_1_data = data(1:find(labels==15,1)-1,:);
data = data(find(labels==15,1):end,:);
labels = labels(find(labels==15,1):end);
gest_15_rep_1_lbl = [gest_15_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_15_rep_1_data = [gest_15_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 15th gesture - 2nd repetition
gest_15_rep_2_lbl = labels(1:find(labels==15,1)-1);
gest_15_rep_2_data = data(1:find(labels==15,1)-1,:);
data = data(find(labels==15,1):end,:);
labels = labels(find(labels==15,1):end);
gest_15_rep_2_lbl = [gest_15_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_15_rep_2_data = [gest_15_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 15th gesture - 3rd repetition
gest_15_rep_3_lbl = labels(1:find(labels==15,1)-1);
gest_15_rep_3_data = data(1:find(labels==15,1)-1,:);
data = data(find(labels==15,1):end,:);
labels = labels(find(labels==15,1):end);
gest_15_rep_3_lbl = [gest_15_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_15_rep_3_data = [gest_15_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 15th gesture - 4th repetition
gest_15_rep_4_lbl = labels(1:find(labels==15,1)-1);
gest_15_rep_4_data = data(1:find(labels==15,1)-1,:);
data = data(find(labels==15,1):end,:);
labels = labels(find(labels==15,1):end);
gest_15_rep_4_lbl = [gest_15_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_15_rep_4_data = [gest_15_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 15th gesture - 5th repetition
gest_15_rep_5_lbl = labels(1:find(labels==15,1)-1);
gest_15_rep_5_data = data(1:find(labels==15,1)-1,:);
data = data(find(labels==15,1):end,:);
labels = labels(find(labels==15,1):end);
gest_15_rep_5_lbl = [gest_15_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_15_rep_5_data = [gest_15_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 15th gesture - 6th repetition
gest_15_rep_6_lbl = labels(1:find(labels==15,1)-1);
gest_15_rep_6_data = data(1:find(labels==15,1)-1,:);
data = data(find(labels==15,1):end,:);
labels = labels(find(labels==15,1):end);
gest_15_rep_6_lbl = [gest_15_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_15_rep_6_data = [gest_15_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 16th gesture - 1st repetition
gest_16_rep_1_lbl = labels(1:find(labels==16,1)-1);
gest_16_rep_1_data = data(1:find(labels==16,1)-1,:);
data = data(find(labels==16,1):end,:);
labels = labels(find(labels==16,1):end);
gest_16_rep_1_lbl = [gest_16_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_16_rep_1_data = [gest_16_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 16th gesture - 2nd repetition
gest_16_rep_2_lbl = labels(1:find(labels==16,1)-1);
gest_16_rep_2_data = data(1:find(labels==16,1)-1,:);
data = data(find(labels==16,1):end,:);
labels = labels(find(labels==16,1):end);
gest_16_rep_2_lbl = [gest_16_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_16_rep_2_data = [gest_16_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 16th gesture - 3rd repetition
gest_16_rep_3_lbl = labels(1:find(labels==16,1)-1);
gest_16_rep_3_data = data(1:find(labels==16,1)-1,:);
data = data(find(labels==16,1):end,:);
labels = labels(find(labels==16,1):end);
gest_16_rep_3_lbl = [gest_16_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_16_rep_3_data = [gest_16_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 16th gesture - 4th repetition
gest_16_rep_4_lbl = labels(1:find(labels==16,1)-1);
gest_16_rep_4_data = data(1:find(labels==16,1)-1,:);
data = data(find(labels==16,1):end,:);
labels = labels(find(labels==16,1):end);
gest_16_rep_4_lbl = [gest_16_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_16_rep_4_data = [gest_16_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 16th gesture - 5th repetition
gest_16_rep_5_lbl = labels(1:find(labels==16,1)-1);
gest_16_rep_5_data = data(1:find(labels==16,1)-1,:);
data = data(find(labels==16,1):end,:);
labels = labels(find(labels==16,1):end);
gest_16_rep_5_lbl = [gest_16_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_16_rep_5_data = [gest_16_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 16th gesture - 6th repetition
gest_16_rep_6_lbl = labels(1:find(labels==16,1)-1);
gest_16_rep_6_data = data(1:find(labels==16,1)-1,:);
data = data(find(labels==16,1):end,:);
labels = labels(find(labels==16,1):end);
gest_16_rep_6_lbl = [gest_16_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_16_rep_6_data = [gest_16_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 17th gesture - 1st repetition
gest_17_rep_1_lbl = labels(1:find(labels==17,1)-1);
gest_17_rep_1_data = data(1:find(labels==17,1)-1,:);
data = data(find(labels==17,1):end,:);
labels = labels(find(labels==17,1):end);
gest_17_rep_1_lbl = [gest_17_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_17_rep_1_data = [gest_17_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 17th gesture - 2nd repetition
gest_17_rep_2_lbl = labels(1:find(labels==17,1)-1);
gest_17_rep_2_data = data(1:find(labels==17,1)-1,:);
data = data(find(labels==17,1):end,:);
labels = labels(find(labels==17,1):end);
gest_17_rep_2_lbl = [gest_17_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_17_rep_2_data = [gest_17_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 17th gesture - 3rd repetition
gest_17_rep_3_lbl = labels(1:find(labels==17,1)-1);
gest_17_rep_3_data = data(1:find(labels==17,1)-1,:);
data = data(find(labels==17,1):end,:);
labels = labels(find(labels==17,1):end);
gest_17_rep_3_lbl = [gest_17_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_17_rep_3_data = [gest_17_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 17th gesture - 4th repetition
gest_17_rep_4_lbl = labels(1:find(labels==17,1)-1);
gest_17_rep_4_data = data(1:find(labels==17,1)-1,:);
data = data(find(labels==17,1):end,:);
labels = labels(find(labels==17,1):end);
gest_17_rep_4_lbl = [gest_17_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_17_rep_4_data = [gest_17_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 17th gesture - 5th repetition
gest_17_rep_5_lbl = labels(1:find(labels==17,1)-1);
gest_17_rep_5_data = data(1:find(labels==17,1)-1,:);
data = data(find(labels==17,1):end,:);
labels = labels(find(labels==17,1):end);
gest_17_rep_5_lbl = [gest_17_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_17_rep_5_data = [gest_17_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 17th gesture - 6th repetition
gest_17_rep_6_lbl = labels(1:find(labels==17,1)-1);
gest_17_rep_6_data = data(1:find(labels==17,1)-1,:);
data = data(find(labels==17,1):end,:);
labels = labels(find(labels==17,1):end);
gest_17_rep_6_lbl = [gest_17_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_17_rep_6_data = [gest_17_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 18th gesture - 1st repetition
gest_18_rep_1_lbl = labels(1:find(labels==18,1)-1);
gest_18_rep_1_data = data(1:find(labels==18,1)-1,:);
data = data(find(labels==18,1):end,:);
labels = labels(find(labels==18,1):end);
gest_18_rep_1_lbl = [gest_18_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_18_rep_1_data = [gest_18_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 18th gesture - 2nd repetition
gest_18_rep_2_lbl = labels(1:find(labels==18,1)-1);
gest_18_rep_2_data = data(1:find(labels==18,1)-1,:);
data = data(find(labels==18,1):end,:);
labels = labels(find(labels==18,1):end);
gest_18_rep_2_lbl = [gest_18_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_18_rep_2_data = [gest_18_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 18th gesture - 3rd repetition
gest_18_rep_3_lbl = labels(1:find(labels==18,1)-1);
gest_18_rep_3_data = data(1:find(labels==18,1)-1,:);
data = data(find(labels==18,1):end,:);
labels = labels(find(labels==18,1):end);
gest_18_rep_3_lbl = [gest_18_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_18_rep_3_data = [gest_18_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 18th gesture - 4th repetition
gest_18_rep_4_lbl = labels(1:find(labels==18,1)-1);
gest_18_rep_4_data = data(1:find(labels==18,1)-1,:);
data = data(find(labels==18,1):end,:);
labels = labels(find(labels==18,1):end);
gest_18_rep_4_lbl = [gest_18_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_18_rep_4_data = [gest_18_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 18th gesture - 5th repetition
gest_18_rep_5_lbl = labels(1:find(labels==18,1)-1);
gest_18_rep_5_data = data(1:find(labels==18,1)-1,:);
data = data(find(labels==18,1):end,:);
labels = labels(find(labels==18,1):end);
gest_18_rep_5_lbl = [gest_18_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_18_rep_5_data = [gest_18_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 18th gesture - 6th repetition
gest_18_rep_6_lbl = labels(1:find(labels==18,1)-1);
gest_18_rep_6_data = data(1:find(labels==18,1)-1,:);
data = data(find(labels==18,1):end,:);
labels = labels(find(labels==18,1):end);
gest_18_rep_6_lbl = [gest_18_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_18_rep_6_data = [gest_18_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 19th gesture - 1st repetition
gest_19_rep_1_lbl = labels(1:find(labels==19,1)-1);
gest_19_rep_1_data = data(1:find(labels==19,1)-1,:);
data = data(find(labels==19,1):end,:);
labels = labels(find(labels==19,1):end);
gest_19_rep_1_lbl = [gest_19_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_19_rep_1_data = [gest_19_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 19th gesture - 2nd repetition
gest_19_rep_2_lbl = labels(1:find(labels==19,1)-1);
gest_19_rep_2_data = data(1:find(labels==19,1)-1,:);
data = data(find(labels==19,1):end,:);
labels = labels(find(labels==19,1):end);
gest_19_rep_2_lbl = [gest_19_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_19_rep_2_data = [gest_19_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 19th gesture - 3rd repetition
gest_19_rep_3_lbl = labels(1:find(labels==19,1)-1);
gest_19_rep_3_data = data(1:find(labels==19,1)-1,:);
data = data(find(labels==19,1):end,:);
labels = labels(find(labels==19,1):end);
gest_19_rep_3_lbl = [gest_19_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_19_rep_3_data = [gest_19_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 19th gesture - 4th repetition
gest_19_rep_4_lbl = labels(1:find(labels==19,1)-1);
gest_19_rep_4_data = data(1:find(labels==19,1)-1,:);
data = data(find(labels==19,1):end,:);
labels = labels(find(labels==19,1):end);
gest_19_rep_4_lbl = [gest_19_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_19_rep_4_data = [gest_19_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 19th gesture - 5th repetition
gest_19_rep_5_lbl = labels(1:find(labels==19,1)-1);
gest_19_rep_5_data = data(1:find(labels==19,1)-1,:);
data = data(find(labels==19,1):end,:);
labels = labels(find(labels==19,1):end);
gest_19_rep_5_lbl = [gest_19_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_19_rep_5_data = [gest_19_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 19th gesture - 6th repetition
gest_19_rep_6_lbl = labels(1:find(labels==19,1)-1);
gest_19_rep_6_data = data(1:find(labels==19,1)-1,:);
data = data(find(labels==19,1):end,:);
labels = labels(find(labels==19,1):end);
gest_19_rep_6_lbl = [gest_19_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_19_rep_6_data = [gest_19_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 20th gesture - 1st repetition
gest_20_rep_1_lbl = labels(1:find(labels==20,1)-1);
gest_20_rep_1_data = data(1:find(labels==20,1)-1,:);
data = data(find(labels==20,1):end,:);
labels = labels(find(labels==20,1):end);
gest_20_rep_1_lbl = [gest_20_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_20_rep_1_data = [gest_20_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 20th gesture - 2nd repetition
gest_20_rep_2_lbl = labels(1:find(labels==20,1)-1);
gest_20_rep_2_data = data(1:find(labels==20,1)-1,:);
data = data(find(labels==20,1):end,:);
labels = labels(find(labels==20,1):end);
gest_20_rep_2_lbl = [gest_20_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_20_rep_2_data = [gest_20_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 20th gesture - 3rd repetition
gest_20_rep_3_lbl = labels(1:find(labels==20,1)-1);
gest_20_rep_3_data = data(1:find(labels==20,1)-1,:);
data = data(find(labels==20,1):end,:);
labels = labels(find(labels==20,1):end);
gest_20_rep_3_lbl = [gest_20_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_20_rep_3_data = [gest_20_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 20th gesture - 4th repetition
gest_20_rep_4_lbl = labels(1:find(labels==20,1)-1);
gest_20_rep_4_data = data(1:find(labels==20,1)-1,:);
data = data(find(labels==20,1):end,:);
labels = labels(find(labels==20,1):end);
gest_20_rep_4_lbl = [gest_20_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_20_rep_4_data = [gest_20_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 20th gesture - 5th repetition
gest_20_rep_5_lbl = labels(1:find(labels==20,1)-1);
gest_20_rep_5_data = data(1:find(labels==20,1)-1,:);
data = data(find(labels==20,1):end,:);
labels = labels(find(labels==20,1):end);
gest_20_rep_5_lbl = [gest_20_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_20_rep_5_data = [gest_20_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 20th gesture - 6th repetition
gest_20_rep_6_lbl = labels(1:find(labels==20,1)-1);
gest_20_rep_6_data = data(1:find(labels==20,1)-1,:);
data = data(find(labels==20,1):end,:);
labels = labels(find(labels==20,1):end);
gest_20_rep_6_lbl = [gest_20_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_20_rep_6_data = [gest_20_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 21th gesture - 1st repetition
gest_21_rep_1_lbl = labels(1:find(labels==21,1)-1);
gest_21_rep_1_data = data(1:find(labels==21,1)-1,:);
data = data(find(labels==21,1):end,:);
labels = labels(find(labels==21,1):end);
gest_21_rep_1_lbl = [gest_21_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_21_rep_1_data = [gest_21_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 21th gesture - 2nd repetition
gest_21_rep_2_lbl = labels(1:find(labels==21,1)-1);
gest_21_rep_2_data = data(1:find(labels==21,1)-1,:);
data = data(find(labels==21,1):end,:);
labels = labels(find(labels==21,1):end);
gest_21_rep_2_lbl = [gest_21_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_21_rep_2_data = [gest_21_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 21th gesture - 3rd repetition
gest_21_rep_3_lbl = labels(1:find(labels==21,1)-1);
gest_21_rep_3_data = data(1:find(labels==21,1)-1,:);
data = data(find(labels==21,1):end,:);
labels = labels(find(labels==21,1):end);
gest_21_rep_3_lbl = [gest_21_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_21_rep_3_data = [gest_21_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 21th gesture - 4th repetition
gest_21_rep_4_lbl = labels(1:find(labels==21,1)-1);
gest_21_rep_4_data = data(1:find(labels==21,1)-1,:);
data = data(find(labels==21,1):end,:);
labels = labels(find(labels==21,1):end);
gest_21_rep_4_lbl = [gest_21_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_21_rep_4_data = [gest_21_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 21th gesture - 5th repetition
gest_21_rep_5_lbl = labels(1:find(labels==21,1)-1);
gest_21_rep_5_data = data(1:find(labels==21,1)-1,:);
data = data(find(labels==21,1):end,:);
labels = labels(find(labels==21,1):end);
gest_21_rep_5_lbl = [gest_21_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_21_rep_5_data = [gest_21_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 21th gesture - 6th repetition
gest_21_rep_6_lbl = labels(1:find(labels==21,1)-1);
gest_21_rep_6_data = data(1:find(labels==21,1)-1,:);
data = data(find(labels==21,1):end,:);
labels = labels(find(labels==21,1):end);
gest_21_rep_6_lbl = [gest_21_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_21_rep_6_data = [gest_21_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 22th gesture - 1st repetition
gest_22_rep_1_lbl = labels(1:find(labels==22,1)-1);
gest_22_rep_1_data = data(1:find(labels==22,1)-1,:);
data = data(find(labels==22,1):end,:);
labels = labels(find(labels==22,1):end);
gest_22_rep_1_lbl = [gest_22_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_22_rep_1_data = [gest_22_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 22th gesture - 2nd repetition
gest_22_rep_2_lbl = labels(1:find(labels==22,1)-1);
gest_22_rep_2_data = data(1:find(labels==22,1)-1,:);
data = data(find(labels==22,1):end,:);
labels = labels(find(labels==22,1):end);
gest_22_rep_2_lbl = [gest_22_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_22_rep_2_data = [gest_22_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 22th gesture - 3rd repetition
gest_22_rep_3_lbl = labels(1:find(labels==22,1)-1);
gest_22_rep_3_data = data(1:find(labels==22,1)-1,:);
data = data(find(labels==22,1):end,:);
labels = labels(find(labels==22,1):end);
gest_22_rep_3_lbl = [gest_22_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_22_rep_3_data = [gest_22_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 22th gesture - 4th repetition
gest_22_rep_4_lbl = labels(1:find(labels==22,1)-1);
gest_22_rep_4_data = data(1:find(labels==22,1)-1,:);
data = data(find(labels==22,1):end,:);
labels = labels(find(labels==22,1):end);
gest_22_rep_4_lbl = [gest_22_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_22_rep_4_data = [gest_22_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 22th gesture - 5th repetition
gest_22_rep_5_lbl = labels(1:find(labels==22,1)-1);
gest_22_rep_5_data = data(1:find(labels==22,1)-1,:);
data = data(find(labels==22,1):end,:);
labels = labels(find(labels==22,1):end);
gest_22_rep_5_lbl = [gest_22_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_22_rep_5_data = [gest_22_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 22th gesture - 6th repetition
gest_22_rep_6_lbl = labels(1:find(labels==22,1)-1);
gest_22_rep_6_data = data(1:find(labels==22,1)-1,:);
data = data(find(labels==22,1):end,:);
labels = labels(find(labels==22,1):end);
gest_22_rep_6_lbl = [gest_22_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_22_rep_6_data = [gest_22_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 23th gesture - 1st repetition
gest_23_rep_1_lbl = labels(1:find(labels==23,1)-1);
gest_23_rep_1_data = data(1:find(labels==23,1)-1,:);
data = data(find(labels==23,1):end,:);
labels = labels(find(labels==23,1):end);
gest_23_rep_1_lbl = [gest_23_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_23_rep_1_data = [gest_23_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 23th gesture - 2nd repetition
gest_23_rep_2_lbl = labels(1:find(labels==23,1)-1);
gest_23_rep_2_data = data(1:find(labels==23,1)-1,:);
data = data(find(labels==23,1):end,:);
labels = labels(find(labels==23,1):end);
gest_23_rep_2_lbl = [gest_23_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_23_rep_2_data = [gest_23_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 23th gesture - 3rd repetition
gest_23_rep_3_lbl = labels(1:find(labels==23,1)-1);
gest_23_rep_3_data = data(1:find(labels==23,1)-1,:);
data = data(find(labels==23,1):end,:);
labels = labels(find(labels==23,1):end);
gest_23_rep_3_lbl = [gest_23_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_23_rep_3_data = [gest_23_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 23th gesture - 4th repetition
gest_23_rep_4_lbl = labels(1:find(labels==23,1)-1);
gest_23_rep_4_data = data(1:find(labels==23,1)-1,:);
data = data(find(labels==23,1):end,:);
labels = labels(find(labels==23,1):end);
gest_23_rep_4_lbl = [gest_23_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_23_rep_4_data = [gest_23_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 23th gesture - 5th repetition
gest_23_rep_5_lbl = labels(1:find(labels==23,1)-1);
gest_23_rep_5_data = data(1:find(labels==23,1)-1,:);
data = data(find(labels==23,1):end,:);
labels = labels(find(labels==23,1):end);
gest_23_rep_5_lbl = [gest_23_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_23_rep_5_data = [gest_23_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 23th gesture - 6th repetition
gest_23_rep_6_lbl = labels(1:find(labels==23,1)-1);
gest_23_rep_6_data = data(1:find(labels==23,1)-1,:);
data = data(find(labels==23,1):end,:);
labels = labels(find(labels==23,1):end);
gest_23_rep_6_lbl = [gest_23_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_23_rep_6_data = [gest_23_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 24th gesture - 1st repetition
gest_24_rep_1_lbl = labels(1:find(labels==24,1)-1);
gest_24_rep_1_data = data(1:find(labels==24,1)-1,:);
data = data(find(labels==24,1):end,:);
labels = labels(find(labels==24,1):end);
gest_24_rep_1_lbl = [gest_24_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_24_rep_1_data = [gest_24_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 24th gesture - 2nd repetition
gest_24_rep_2_lbl = labels(1:find(labels==24,1)-1);
gest_24_rep_2_data = data(1:find(labels==24,1)-1,:);
data = data(find(labels==24,1):end,:);
labels = labels(find(labels==24,1):end);
gest_24_rep_2_lbl = [gest_24_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_24_rep_2_data = [gest_24_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 24th gesture - 3rd repetition
gest_24_rep_3_lbl = labels(1:find(labels==24,1)-1);
gest_24_rep_3_data = data(1:find(labels==24,1)-1,:);
data = data(find(labels==24,1):end,:);
labels = labels(find(labels==24,1):end);
gest_24_rep_3_lbl = [gest_24_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_24_rep_3_data = [gest_24_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 24th gesture - 4th repetition
gest_24_rep_4_lbl = labels(1:find(labels==24,1)-1);
gest_24_rep_4_data = data(1:find(labels==24,1)-1,:);
data = data(find(labels==24,1):end,:);
labels = labels(find(labels==24,1):end);
gest_24_rep_4_lbl = [gest_24_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_24_rep_4_data = [gest_24_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 24th gesture - 5th repetition
gest_24_rep_5_lbl = labels(1:find(labels==24,1)-1);
gest_24_rep_5_data = data(1:find(labels==24,1)-1,:);
data = data(find(labels==24,1):end,:);
labels = labels(find(labels==24,1):end);
gest_24_rep_5_lbl = [gest_24_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_24_rep_5_data = [gest_24_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 24th gesture - 6th repetition
gest_24_rep_6_lbl = labels(1:find(labels==24,1)-1);
gest_24_rep_6_data = data(1:find(labels==24,1)-1,:);
data = data(find(labels==24,1):end,:);
labels = labels(find(labels==24,1):end);
gest_24_rep_6_lbl = [gest_24_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_24_rep_6_data = [gest_24_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 25th gesture - 1st repetition
gest_25_rep_1_lbl = labels(1:find(labels==25,1)-1);
gest_25_rep_1_data = data(1:find(labels==25,1)-1,:);
data = data(find(labels==25,1):end,:);
labels = labels(find(labels==25,1):end);
gest_25_rep_1_lbl = [gest_25_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_25_rep_1_data = [gest_25_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 25th gesture - 2nd repetition
gest_25_rep_2_lbl = labels(1:find(labels==25,1)-1);
gest_25_rep_2_data = data(1:find(labels==25,1)-1,:);
data = data(find(labels==25,1):end,:);
labels = labels(find(labels==25,1):end);
gest_25_rep_2_lbl = [gest_25_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_25_rep_2_data = [gest_25_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 25th gesture - 3rd repetition
gest_25_rep_3_lbl = labels(1:find(labels==25,1)-1);
gest_25_rep_3_data = data(1:find(labels==25,1)-1,:);
data = data(find(labels==25,1):end,:);
labels = labels(find(labels==25,1):end);
gest_25_rep_3_lbl = [gest_25_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_25_rep_3_data = [gest_25_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 25th gesture - 4th repetition
gest_25_rep_4_lbl = labels(1:find(labels==25,1)-1);
gest_25_rep_4_data = data(1:find(labels==25,1)-1,:);
data = data(find(labels==25,1):end,:);
labels = labels(find(labels==25,1):end);
gest_25_rep_4_lbl = [gest_25_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_25_rep_4_data = [gest_25_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 25th gesture - 5th repetition
gest_25_rep_5_lbl = labels(1:find(labels==25,1)-1);
gest_25_rep_5_data = data(1:find(labels==25,1)-1,:);
data = data(find(labels==25,1):end,:);
labels = labels(find(labels==25,1):end);
gest_25_rep_5_lbl = [gest_25_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_25_rep_5_data = [gest_25_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 25th gesture - 6th repetition
gest_25_rep_6_lbl = labels(1:find(labels==25,1)-1);
gest_25_rep_6_data = data(1:find(labels==25,1)-1,:);
data = data(find(labels==25,1):end,:);
labels = labels(find(labels==25,1):end);
gest_25_rep_6_lbl = [gest_25_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_25_rep_6_data = [gest_25_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 26th gesture - 1st repetition
gest_26_rep_1_lbl = labels(1:find(labels==26,1)-1);
gest_26_rep_1_data = data(1:find(labels==26,1)-1,:);
data = data(find(labels==26,1):end,:);
labels = labels(find(labels==26,1):end);
gest_26_rep_1_lbl = [gest_26_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_26_rep_1_data = [gest_26_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 26th gesture - 2nd repetition
gest_26_rep_2_lbl = labels(1:find(labels==26,1)-1);
gest_26_rep_2_data = data(1:find(labels==26,1)-1,:);
data = data(find(labels==26,1):end,:);
labels = labels(find(labels==26,1):end);
gest_26_rep_2_lbl = [gest_26_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_26_rep_2_data = [gest_26_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 26th gesture - 3rd repetition
gest_26_rep_3_lbl = labels(1:find(labels==26,1)-1);
gest_26_rep_3_data = data(1:find(labels==26,1)-1,:);
data = data(find(labels==26,1):end,:);
labels = labels(find(labels==26,1):end);
gest_26_rep_3_lbl = [gest_26_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_26_rep_3_data = [gest_26_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 26th gesture - 4th repetition
gest_26_rep_4_lbl = labels(1:find(labels==26,1)-1);
gest_26_rep_4_data = data(1:find(labels==26,1)-1,:);
data = data(find(labels==26,1):end,:);
labels = labels(find(labels==26,1):end);
gest_26_rep_4_lbl = [gest_26_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_26_rep_4_data = [gest_26_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 26th gesture - 5th repetition
gest_26_rep_5_lbl = labels(1:find(labels==26,1)-1);
gest_26_rep_5_data = data(1:find(labels==26,1)-1,:);
data = data(find(labels==26,1):end,:);
labels = labels(find(labels==26,1):end);
gest_26_rep_5_lbl = [gest_26_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_26_rep_5_data = [gest_26_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 26th gesture - 6th repetition
gest_26_rep_6_lbl = labels(1:find(labels==26,1)-1);
gest_26_rep_6_data = data(1:find(labels==26,1)-1,:);
data = data(find(labels==26,1):end,:);
labels = labels(find(labels==26,1):end);
gest_26_rep_6_lbl = [gest_26_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_26_rep_6_data = [gest_26_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 27th gesture - 1st repetition
gest_27_rep_1_lbl = labels(1:find(labels==27,1)-1);
gest_27_rep_1_data = data(1:find(labels==27,1)-1,:);
data = data(find(labels==27,1):end,:);
labels = labels(find(labels==27,1):end);
gest_27_rep_1_lbl = [gest_27_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_27_rep_1_data = [gest_27_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 27th gesture - 2nd repetition
gest_27_rep_2_lbl = labels(1:find(labels==27,1)-1);
gest_27_rep_2_data = data(1:find(labels==27,1)-1,:);
data = data(find(labels==27,1):end,:);
labels = labels(find(labels==27,1):end);
gest_27_rep_2_lbl = [gest_27_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_27_rep_2_data = [gest_27_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 27th gesture - 3rd repetition
gest_27_rep_3_lbl = labels(1:find(labels==27,1)-1);
gest_27_rep_3_data = data(1:find(labels==27,1)-1,:);
data = data(find(labels==27,1):end,:);
labels = labels(find(labels==27,1):end);
gest_27_rep_3_lbl = [gest_27_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_27_rep_3_data = [gest_27_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 27th gesture - 4th repetition
gest_27_rep_4_lbl = labels(1:find(labels==27,1)-1);
gest_27_rep_4_data = data(1:find(labels==27,1)-1,:);
data = data(find(labels==27,1):end,:);
labels = labels(find(labels==27,1):end);
gest_27_rep_4_lbl = [gest_27_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_27_rep_4_data = [gest_27_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 27th gesture - 5th repetition
gest_27_rep_5_lbl = labels(1:find(labels==27,1)-1);
gest_27_rep_5_data = data(1:find(labels==27,1)-1,:);
data = data(find(labels==27,1):end,:);
labels = labels(find(labels==27,1):end);
gest_27_rep_5_lbl = [gest_27_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_27_rep_5_data = [gest_27_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 27th gesture - 6th repetition
gest_27_rep_6_lbl = labels(1:find(labels==27,1)-1);
gest_27_rep_6_data = data(1:find(labels==27,1)-1,:);
data = data(find(labels==27,1):end,:);
labels = labels(find(labels==27,1):end);
gest_27_rep_6_lbl = [gest_27_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_27_rep_6_data = [gest_27_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 28th gesture - 1st repetition
gest_28_rep_1_lbl = labels(1:find(labels==28,1)-1);
gest_28_rep_1_data = data(1:find(labels==28,1)-1,:);
data = data(find(labels==28,1):end,:);
labels = labels(find(labels==28,1):end);
gest_28_rep_1_lbl = [gest_28_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_28_rep_1_data = [gest_28_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 28th gesture - 2nd repetition
gest_28_rep_2_lbl = labels(1:find(labels==28,1)-1);
gest_28_rep_2_data = data(1:find(labels==28,1)-1,:);
data = data(find(labels==28,1):end,:);
labels = labels(find(labels==28,1):end);
gest_28_rep_2_lbl = [gest_28_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_28_rep_2_data = [gest_28_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 28th gesture - 3rd repetition
gest_28_rep_3_lbl = labels(1:find(labels==28,1)-1);
gest_28_rep_3_data = data(1:find(labels==28,1)-1,:);
data = data(find(labels==28,1):end,:);
labels = labels(find(labels==28,1):end);
gest_28_rep_3_lbl = [gest_28_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_28_rep_3_data = [gest_28_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 28th gesture - 4th repetition
gest_28_rep_4_lbl = labels(1:find(labels==28,1)-1);
gest_28_rep_4_data = data(1:find(labels==28,1)-1,:);
data = data(find(labels==28,1):end,:);
labels = labels(find(labels==28,1):end);
gest_28_rep_4_lbl = [gest_28_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_28_rep_4_data = [gest_28_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 28th gesture - 5th repetition
gest_28_rep_5_lbl = labels(1:find(labels==28,1)-1);
gest_28_rep_5_data = data(1:find(labels==28,1)-1,:);
data = data(find(labels==28,1):end,:);
labels = labels(find(labels==28,1):end);
gest_28_rep_5_lbl = [gest_28_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_28_rep_5_data = [gest_28_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 28th gesture - 6th repetition
gest_28_rep_6_lbl = labels(1:find(labels==28,1)-1);
gest_28_rep_6_data = data(1:find(labels==28,1)-1,:);
data = data(find(labels==28,1):end,:);
labels = labels(find(labels==28,1):end);
gest_28_rep_6_lbl = [gest_28_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_28_rep_6_data = [gest_28_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 29th gesture - 1st repetition
gest_29_rep_1_lbl = labels(1:find(labels==29,1)-1);
gest_29_rep_1_data = data(1:find(labels==29,1)-1,:);
data = data(find(labels==29,1):end,:);
labels = labels(find(labels==29,1):end);
gest_29_rep_1_lbl = [gest_29_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_29_rep_1_data = [gest_29_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 29th gesture - 2nd repetition
gest_29_rep_2_lbl = labels(1:find(labels==29,1)-1);
gest_29_rep_2_data = data(1:find(labels==29,1)-1,:);
data = data(find(labels==29,1):end,:);
labels = labels(find(labels==29,1):end);
gest_29_rep_2_lbl = [gest_29_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_29_rep_2_data = [gest_29_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 29th gesture - 3rd repetition
gest_29_rep_3_lbl = labels(1:find(labels==29,1)-1);
gest_29_rep_3_data = data(1:find(labels==29,1)-1,:);
data = data(find(labels==29,1):end,:);
labels = labels(find(labels==29,1):end);
gest_29_rep_3_lbl = [gest_29_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_29_rep_3_data = [gest_29_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 29th gesture - 4th repetition
gest_29_rep_4_lbl = labels(1:find(labels==29,1)-1);
gest_29_rep_4_data = data(1:find(labels==29,1)-1,:);
data = data(find(labels==29,1):end,:);
labels = labels(find(labels==29,1):end);
gest_29_rep_4_lbl = [gest_29_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_29_rep_4_data = [gest_29_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 29th gesture - 5th repetition
gest_29_rep_5_lbl = labels(1:find(labels==29,1)-1);
gest_29_rep_5_data = data(1:find(labels==29,1)-1,:);
data = data(find(labels==29,1):end,:);
labels = labels(find(labels==29,1):end);
gest_29_rep_5_lbl = [gest_29_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_29_rep_5_data = [gest_29_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 29th gesture - 6th repetition
gest_29_rep_6_lbl = labels(1:find(labels==29,1)-1);
gest_29_rep_6_data = data(1:find(labels==29,1)-1,:);
data = data(find(labels==29,1):end,:);
labels = labels(find(labels==29,1):end);
gest_29_rep_6_lbl = [gest_29_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_29_rep_6_data = [gest_29_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 30th gesture - 1st repetition
gest_30_rep_1_lbl = labels(1:find(labels==30,1)-1);
gest_30_rep_1_data = data(1:find(labels==30,1)-1,:);
data = data(find(labels==30,1):end,:);
labels = labels(find(labels==30,1):end);
gest_30_rep_1_lbl = [gest_30_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_30_rep_1_data = [gest_30_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 30th gesture - 2nd repetition
gest_30_rep_2_lbl = labels(1:find(labels==30,1)-1);
gest_30_rep_2_data = data(1:find(labels==30,1)-1,:);
data = data(find(labels==30,1):end,:);
labels = labels(find(labels==30,1):end);
gest_30_rep_2_lbl = [gest_30_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_30_rep_2_data = [gest_30_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 30th gesture - 3rd repetition
gest_30_rep_3_lbl = labels(1:find(labels==30,1)-1);
gest_30_rep_3_data = data(1:find(labels==30,1)-1,:);
data = data(find(labels==30,1):end,:);
labels = labels(find(labels==30,1):end);
gest_30_rep_3_lbl = [gest_30_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_30_rep_3_data = [gest_30_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 30th gesture - 4th repetition
gest_30_rep_4_lbl = labels(1:find(labels==30,1)-1);
gest_30_rep_4_data = data(1:find(labels==30,1)-1,:);
data = data(find(labels==30,1):end,:);
labels = labels(find(labels==30,1):end);
gest_30_rep_4_lbl = [gest_30_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_30_rep_4_data = [gest_30_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 30th gesture - 5th repetition
gest_30_rep_5_lbl = labels(1:find(labels==30,1)-1);
gest_30_rep_5_data = data(1:find(labels==30,1)-1,:);
data = data(find(labels==30,1):end,:);
labels = labels(find(labels==30,1):end);
gest_30_rep_5_lbl = [gest_30_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_30_rep_5_data = [gest_30_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 30th gesture - 6th repetition
gest_30_rep_6_lbl = labels(1:find(labels==30,1)-1);
gest_30_rep_6_data = data(1:find(labels==30,1)-1,:);
data = data(find(labels==30,1):end,:);
labels = labels(find(labels==30,1):end);
gest_30_rep_6_lbl = [gest_30_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_30_rep_6_data = [gest_30_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 31th gesture - 1st repetition
gest_31_rep_1_lbl = labels(1:find(labels==31,1)-1);
gest_31_rep_1_data = data(1:find(labels==31,1)-1,:);
data = data(find(labels==31,1):end,:);
labels = labels(find(labels==31,1):end);
gest_31_rep_1_lbl = [gest_31_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_31_rep_1_data = [gest_31_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 31th gesture - 2nd repetition
gest_31_rep_2_lbl = labels(1:find(labels==31,1)-1);
gest_31_rep_2_data = data(1:find(labels==31,1)-1,:);
data = data(find(labels==31,1):end,:);
labels = labels(find(labels==31,1):end);
gest_31_rep_2_lbl = [gest_31_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_31_rep_2_data = [gest_31_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 31th gesture - 3rd repetition
gest_31_rep_3_lbl = labels(1:find(labels==31,1)-1);
gest_31_rep_3_data = data(1:find(labels==31,1)-1,:);
data = data(find(labels==31,1):end,:);
labels = labels(find(labels==31,1):end);
gest_31_rep_3_lbl = [gest_31_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_31_rep_3_data = [gest_31_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 31th gesture - 4th repetition
gest_31_rep_4_lbl = labels(1:find(labels==31,1)-1);
gest_31_rep_4_data = data(1:find(labels==31,1)-1,:);
data = data(find(labels==31,1):end,:);
labels = labels(find(labels==31,1):end);
gest_31_rep_4_lbl = [gest_31_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_31_rep_4_data = [gest_31_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 31th gesture - 5th repetition
gest_31_rep_5_lbl = labels(1:find(labels==31,1)-1);
gest_31_rep_5_data = data(1:find(labels==31,1)-1,:);
data = data(find(labels==31,1):end,:);
labels = labels(find(labels==31,1):end);
gest_31_rep_5_lbl = [gest_31_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_31_rep_5_data = [gest_31_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 31th gesture - 6th repetition
gest_31_rep_6_lbl = labels(1:find(labels==31,1)-1);
gest_31_rep_6_data = data(1:find(labels==31,1)-1,:);
data = data(find(labels==31,1):end,:);
labels = labels(find(labels==31,1):end);
gest_31_rep_6_lbl = [gest_31_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_31_rep_6_data = [gest_31_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 32th gesture - 1st repetition
gest_32_rep_1_lbl = labels(1:find(labels==32,1)-1);
gest_32_rep_1_data = data(1:find(labels==32,1)-1,:);
data = data(find(labels==32,1):end,:);
labels = labels(find(labels==32,1):end);
gest_32_rep_1_lbl = [gest_32_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_32_rep_1_data = [gest_32_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 32th gesture - 2nd repetition
gest_32_rep_2_lbl = labels(1:find(labels==32,1)-1);
gest_32_rep_2_data = data(1:find(labels==32,1)-1,:);
data = data(find(labels==32,1):end,:);
labels = labels(find(labels==32,1):end);
gest_32_rep_2_lbl = [gest_32_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_32_rep_2_data = [gest_32_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 32th gesture - 3rd repetition
gest_32_rep_3_lbl = labels(1:find(labels==32,1)-1);
gest_32_rep_3_data = data(1:find(labels==32,1)-1,:);
data = data(find(labels==32,1):end,:);
labels = labels(find(labels==32,1):end);
gest_32_rep_3_lbl = [gest_32_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_32_rep_3_data = [gest_32_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 32th gesture - 4th repetition
gest_32_rep_4_lbl = labels(1:find(labels==32,1)-1);
gest_32_rep_4_data = data(1:find(labels==32,1)-1,:);
data = data(find(labels==32,1):end,:);
labels = labels(find(labels==32,1):end);
gest_32_rep_4_lbl = [gest_32_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_32_rep_4_data = [gest_32_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 32th gesture - 5th repetition
gest_32_rep_5_lbl = labels(1:find(labels==32,1)-1);
gest_32_rep_5_data = data(1:find(labels==32,1)-1,:);
data = data(find(labels==32,1):end,:);
labels = labels(find(labels==32,1):end);
gest_32_rep_5_lbl = [gest_32_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_32_rep_5_data = [gest_32_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 32th gesture - 6th repetition
gest_32_rep_6_lbl = labels(1:find(labels==32,1)-1);
gest_32_rep_6_data = data(1:find(labels==32,1)-1,:);
data = data(find(labels==32,1):end,:);
labels = labels(find(labels==32,1):end);
gest_32_rep_6_lbl = [gest_32_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_32_rep_6_data = [gest_32_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 33th gesture - 1st repetition
gest_33_rep_1_lbl = labels(1:find(labels==33,1)-1);
gest_33_rep_1_data = data(1:find(labels==33,1)-1,:);
data = data(find(labels==33,1):end,:);
labels = labels(find(labels==33,1):end);
gest_33_rep_1_lbl = [gest_33_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_33_rep_1_data = [gest_33_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 33th gesture - 2nd repetition
gest_33_rep_2_lbl = labels(1:find(labels==33,1)-1);
gest_33_rep_2_data = data(1:find(labels==33,1)-1,:);
data = data(find(labels==33,1):end,:);
labels = labels(find(labels==33,1):end);
gest_33_rep_2_lbl = [gest_33_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_33_rep_2_data = [gest_33_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 33th gesture - 3rd repetition
gest_33_rep_3_lbl = labels(1:find(labels==33,1)-1);
gest_33_rep_3_data = data(1:find(labels==33,1)-1,:);
data = data(find(labels==33,1):end,:);
labels = labels(find(labels==33,1):end);
gest_33_rep_3_lbl = [gest_33_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_33_rep_3_data = [gest_33_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 33th gesture - 4th repetition
gest_33_rep_4_lbl = labels(1:find(labels==33,1)-1);
gest_33_rep_4_data = data(1:find(labels==33,1)-1,:);
data = data(find(labels==33,1):end,:);
labels = labels(find(labels==33,1):end);
gest_33_rep_4_lbl = [gest_33_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_33_rep_4_data = [gest_33_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 33th gesture - 5th repetition
gest_33_rep_5_lbl = labels(1:find(labels==33,1)-1);
gest_33_rep_5_data = data(1:find(labels==33,1)-1,:);
data = data(find(labels==33,1):end,:);
labels = labels(find(labels==33,1):end);
gest_33_rep_5_lbl = [gest_33_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_33_rep_5_data = [gest_33_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 33th gesture - 6th repetition
gest_33_rep_6_lbl = labels(1:find(labels==33,1)-1);
gest_33_rep_6_data = data(1:find(labels==33,1)-1,:);
data = data(find(labels==33,1):end,:);
labels = labels(find(labels==33,1):end);
gest_33_rep_6_lbl = [gest_33_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_33_rep_6_data = [gest_33_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 34th gesture - 1st repetition
gest_34_rep_1_lbl = labels(1:find(labels==34,1)-1);
gest_34_rep_1_data = data(1:find(labels==34,1)-1,:);
data = data(find(labels==34,1):end,:);
labels = labels(find(labels==34,1):end);
gest_34_rep_1_lbl = [gest_34_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_34_rep_1_data = [gest_34_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 34th gesture - 2nd repetition
gest_34_rep_2_lbl = labels(1:find(labels==34,1)-1);
gest_34_rep_2_data = data(1:find(labels==34,1)-1,:);
data = data(find(labels==34,1):end,:);
labels = labels(find(labels==34,1):end);
gest_34_rep_2_lbl = [gest_34_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_34_rep_2_data = [gest_34_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 34th gesture - 3rd repetition
gest_34_rep_3_lbl = labels(1:find(labels==34,1)-1);
gest_34_rep_3_data = data(1:find(labels==34,1)-1,:);
data = data(find(labels==34,1):end,:);
labels = labels(find(labels==34,1):end);
gest_34_rep_3_lbl = [gest_34_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_34_rep_3_data = [gest_34_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 34th gesture - 4th repetition
gest_34_rep_4_lbl = labels(1:find(labels==34,1)-1);
gest_34_rep_4_data = data(1:find(labels==34,1)-1,:);
data = data(find(labels==34,1):end,:);
labels = labels(find(labels==34,1):end);
gest_34_rep_4_lbl = [gest_34_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_34_rep_4_data = [gest_34_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 34th gesture - 5th repetition
gest_34_rep_5_lbl = labels(1:find(labels==34,1)-1);
gest_34_rep_5_data = data(1:find(labels==34,1)-1,:);
data = data(find(labels==34,1):end,:);
labels = labels(find(labels==34,1):end);
gest_34_rep_5_lbl = [gest_34_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_34_rep_5_data = [gest_34_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 34th gesture - 6th repetition
gest_34_rep_6_lbl = labels(1:find(labels==34,1)-1);
gest_34_rep_6_data = data(1:find(labels==34,1)-1,:);
data = data(find(labels==34,1):end,:);
labels = labels(find(labels==34,1):end);
gest_34_rep_6_lbl = [gest_34_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_34_rep_6_data = [gest_34_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 35th gesture - 1st repetition
gest_35_rep_1_lbl = labels(1:find(labels==35,1)-1);
gest_35_rep_1_data = data(1:find(labels==35,1)-1,:);
data = data(find(labels==35,1):end,:);
labels = labels(find(labels==35,1):end);
gest_35_rep_1_lbl = [gest_35_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_35_rep_1_data = [gest_35_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 35th gesture - 2nd repetition
gest_35_rep_2_lbl = labels(1:find(labels==35,1)-1);
gest_35_rep_2_data = data(1:find(labels==35,1)-1,:);
data = data(find(labels==35,1):end,:);
labels = labels(find(labels==35,1):end);
gest_35_rep_2_lbl = [gest_35_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_35_rep_2_data = [gest_35_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 35th gesture - 3rd repetition
gest_35_rep_3_lbl = labels(1:find(labels==35,1)-1);
gest_35_rep_3_data = data(1:find(labels==35,1)-1,:);
data = data(find(labels==35,1):end,:);
labels = labels(find(labels==35,1):end);
gest_35_rep_3_lbl = [gest_35_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_35_rep_3_data = [gest_35_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 35th gesture - 4th repetition
gest_35_rep_4_lbl = labels(1:find(labels==35,1)-1);
gest_35_rep_4_data = data(1:find(labels==35,1)-1,:);
data = data(find(labels==35,1):end,:);
labels = labels(find(labels==35,1):end);
gest_35_rep_4_lbl = [gest_35_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_35_rep_4_data = [gest_35_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 35th gesture - 5th repetition
gest_35_rep_5_lbl = labels(1:find(labels==35,1)-1);
gest_35_rep_5_data = data(1:find(labels==35,1)-1,:);
data = data(find(labels==35,1):end,:);
labels = labels(find(labels==35,1):end);
gest_35_rep_5_lbl = [gest_35_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_35_rep_5_data = [gest_35_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 35th gesture - 6th repetition
gest_35_rep_6_lbl = labels(1:find(labels==35,1)-1);
gest_35_rep_6_data = data(1:find(labels==35,1)-1,:);
data = data(find(labels==35,1):end,:);
labels = labels(find(labels==35,1):end);
gest_35_rep_6_lbl = [gest_35_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_35_rep_6_data = [gest_35_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 36th gesture - 1st repetition
gest_36_rep_1_lbl = labels(1:find(labels==36,1)-1);
gest_36_rep_1_data = data(1:find(labels==36,1)-1,:);
data = data(find(labels==36,1):end,:);
labels = labels(find(labels==36,1):end);
gest_36_rep_1_lbl = [gest_36_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_36_rep_1_data = [gest_36_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 36th gesture - 2nd repetition
gest_36_rep_2_lbl = labels(1:find(labels==36,1)-1);
gest_36_rep_2_data = data(1:find(labels==36,1)-1,:);
data = data(find(labels==36,1):end,:);
labels = labels(find(labels==36,1):end);
gest_36_rep_2_lbl = [gest_36_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_36_rep_2_data = [gest_36_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 36th gesture - 3rd repetition
gest_36_rep_3_lbl = labels(1:find(labels==36,1)-1);
gest_36_rep_3_data = data(1:find(labels==36,1)-1,:);
data = data(find(labels==36,1):end,:);
labels = labels(find(labels==36,1):end);
gest_36_rep_3_lbl = [gest_36_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_36_rep_3_data = [gest_36_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 36th gesture - 4th repetition
gest_36_rep_4_lbl = labels(1:find(labels==36,1)-1);
gest_36_rep_4_data = data(1:find(labels==36,1)-1,:);
data = data(find(labels==36,1):end,:);
labels = labels(find(labels==36,1):end);
gest_36_rep_4_lbl = [gest_36_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_36_rep_4_data = [gest_36_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 36th gesture - 5th repetition
gest_36_rep_5_lbl = labels(1:find(labels==36,1)-1);
gest_36_rep_5_data = data(1:find(labels==36,1)-1,:);
data = data(find(labels==36,1):end,:);
labels = labels(find(labels==36,1):end);
gest_36_rep_5_lbl = [gest_36_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_36_rep_5_data = [gest_36_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 36th gesture - 6th repetition
gest_36_rep_6_lbl = labels(1:find(labels==36,1)-1);
gest_36_rep_6_data = data(1:find(labels==36,1)-1,:);
data = data(find(labels==36,1):end,:);
labels = labels(find(labels==36,1):end);
gest_36_rep_6_lbl = [gest_36_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_36_rep_6_data = [gest_36_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 37th gesture - 1st repetition
gest_37_rep_1_lbl = labels(1:find(labels==37,1)-1);
gest_37_rep_1_data = data(1:find(labels==37,1)-1,:);
data = data(find(labels==37,1):end,:);
labels = labels(find(labels==37,1):end);
gest_37_rep_1_lbl = [gest_37_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_37_rep_1_data = [gest_37_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 37th gesture - 2nd repetition
gest_37_rep_2_lbl = labels(1:find(labels==37,1)-1);
gest_37_rep_2_data = data(1:find(labels==37,1)-1,:);
data = data(find(labels==37,1):end,:);
labels = labels(find(labels==37,1):end);
gest_37_rep_2_lbl = [gest_37_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_37_rep_2_data = [gest_37_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 37th gesture - 3rd repetition
gest_37_rep_3_lbl = labels(1:find(labels==37,1)-1);
gest_37_rep_3_data = data(1:find(labels==37,1)-1,:);
data = data(find(labels==37,1):end,:);
labels = labels(find(labels==37,1):end);
gest_37_rep_3_lbl = [gest_37_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_37_rep_3_data = [gest_37_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 37th gesture - 4th repetition
gest_37_rep_4_lbl = labels(1:find(labels==37,1)-1);
gest_37_rep_4_data = data(1:find(labels==37,1)-1,:);
data = data(find(labels==37,1):end,:);
labels = labels(find(labels==37,1):end);
gest_37_rep_4_lbl = [gest_37_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_37_rep_4_data = [gest_37_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 37th gesture - 5th repetition
gest_37_rep_5_lbl = labels(1:find(labels==37,1)-1);
gest_37_rep_5_data = data(1:find(labels==37,1)-1,:);
data = data(find(labels==37,1):end,:);
labels = labels(find(labels==37,1):end);
gest_37_rep_5_lbl = [gest_37_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_37_rep_5_data = [gest_37_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 37th gesture - 6th repetition
gest_37_rep_6_lbl = labels(1:find(labels==37,1)-1);
gest_37_rep_6_data = data(1:find(labels==37,1)-1,:);
data = data(find(labels==37,1):end,:);
labels = labels(find(labels==37,1):end);
gest_37_rep_6_lbl = [gest_37_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_37_rep_6_data = [gest_37_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 38th gesture - 1st repetition
gest_38_rep_1_lbl = labels(1:find(labels==38,1)-1);
gest_38_rep_1_data = data(1:find(labels==38,1)-1,:);
data = data(find(labels==38,1):end,:);
labels = labels(find(labels==38,1):end);
gest_38_rep_1_lbl = [gest_38_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_38_rep_1_data = [gest_38_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 38th gesture - 2nd repetition
gest_38_rep_2_lbl = labels(1:find(labels==38,1)-1);
gest_38_rep_2_data = data(1:find(labels==38,1)-1,:);
data = data(find(labels==38,1):end,:);
labels = labels(find(labels==38,1):end);
gest_38_rep_2_lbl = [gest_38_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_38_rep_2_data = [gest_38_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 38th gesture - 3rd repetition
gest_38_rep_3_lbl = labels(1:find(labels==38,1)-1);
gest_38_rep_3_data = data(1:find(labels==38,1)-1,:);
data = data(find(labels==38,1):end,:);
labels = labels(find(labels==38,1):end);
gest_38_rep_3_lbl = [gest_38_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_38_rep_3_data = [gest_38_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 38th gesture - 4th repetition
gest_38_rep_4_lbl = labels(1:find(labels==38,1)-1);
gest_38_rep_4_data = data(1:find(labels==38,1)-1,:);
data = data(find(labels==38,1):end,:);
labels = labels(find(labels==38,1):end);
gest_38_rep_4_lbl = [gest_38_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_38_rep_4_data = [gest_38_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 38th gesture - 5th repetition
gest_38_rep_5_lbl = labels(1:find(labels==38,1)-1);
gest_38_rep_5_data = data(1:find(labels==38,1)-1,:);
data = data(find(labels==38,1):end,:);
labels = labels(find(labels==38,1):end);
gest_38_rep_5_lbl = [gest_38_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_38_rep_5_data = [gest_38_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 38th gesture - 6th repetition
gest_38_rep_6_lbl = labels(1:find(labels==38,1)-1);
gest_38_rep_6_data = data(1:find(labels==38,1)-1,:);
data = data(find(labels==38,1):end,:);
labels = labels(find(labels==38,1):end);
gest_38_rep_6_lbl = [gest_38_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_38_rep_6_data = [gest_38_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 39th gesture - 1st repetition
gest_39_rep_1_lbl = labels(1:find(labels==39,1)-1);
gest_39_rep_1_data = data(1:find(labels==39,1)-1,:);
data = data(find(labels==39,1):end,:);
labels = labels(find(labels==39,1):end);
gest_39_rep_1_lbl = [gest_39_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_39_rep_1_data = [gest_39_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 39th gesture - 2nd repetition
gest_39_rep_2_lbl = labels(1:find(labels==39,1)-1);
gest_39_rep_2_data = data(1:find(labels==39,1)-1,:);
data = data(find(labels==39,1):end,:);
labels = labels(find(labels==39,1):end);
gest_39_rep_2_lbl = [gest_39_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_39_rep_2_data = [gest_39_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 39th gesture - 3rd repetition
gest_39_rep_3_lbl = labels(1:find(labels==39,1)-1);
gest_39_rep_3_data = data(1:find(labels==39,1)-1,:);
data = data(find(labels==39,1):end,:);
labels = labels(find(labels==39,1):end);
gest_39_rep_3_lbl = [gest_39_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_39_rep_3_data = [gest_39_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 39th gesture - 4th repetition
gest_39_rep_4_lbl = labels(1:find(labels==39,1)-1);
gest_39_rep_4_data = data(1:find(labels==39,1)-1,:);
data = data(find(labels==39,1):end,:);
labels = labels(find(labels==39,1):end);
gest_39_rep_4_lbl = [gest_39_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_39_rep_4_data = [gest_39_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 39th gesture - 5th repetition
gest_39_rep_5_lbl = labels(1:find(labels==39,1)-1);
gest_39_rep_5_data = data(1:find(labels==39,1)-1,:);
data = data(find(labels==39,1):end,:);
labels = labels(find(labels==39,1):end);
gest_39_rep_5_lbl = [gest_39_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_39_rep_5_data = [gest_39_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 39th gesture - 6th repetition
gest_39_rep_6_lbl = labels(1:find(labels==39,1)-1);
gest_39_rep_6_data = data(1:find(labels==39,1)-1,:);
data = data(find(labels==39,1):end,:);
labels = labels(find(labels==39,1):end);
gest_39_rep_6_lbl = [gest_39_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_39_rep_6_data = [gest_39_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 40th gesture - 1st repetition
gest_40_rep_1_lbl = labels(1:find(labels==40,1)-1);
gest_40_rep_1_data = data(1:find(labels==40,1)-1,:);
data = data(find(labels==40,1):end,:);
labels = labels(find(labels==40,1):end);
gest_40_rep_1_lbl = [gest_40_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_40_rep_1_data = [gest_40_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 40th gesture - 2nd repetition
gest_40_rep_2_lbl = labels(1:find(labels==40,1)-1);
gest_40_rep_2_data = data(1:find(labels==40,1)-1,:);
data = data(find(labels==40,1):end,:);
labels = labels(find(labels==40,1):end);
gest_40_rep_2_lbl = [gest_40_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_40_rep_2_data = [gest_40_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 40th gesture - 3rd repetition
gest_40_rep_3_lbl = labels(1:find(labels==40,1)-1);
gest_40_rep_3_data = data(1:find(labels==40,1)-1,:);
data = data(find(labels==40,1):end,:);
labels = labels(find(labels==40,1):end);
gest_40_rep_3_lbl = [gest_40_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_40_rep_3_data = [gest_40_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 40th gesture - 4th repetition
gest_40_rep_4_lbl = labels(1:find(labels==40,1)-1);
gest_40_rep_4_data = data(1:find(labels==40,1)-1,:);
data = data(find(labels==40,1):end,:);
labels = labels(find(labels==40,1):end);
gest_40_rep_4_lbl = [gest_40_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_40_rep_4_data = [gest_40_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 40th gesture - 5th repetition
gest_40_rep_5_lbl = labels(1:find(labels==40,1)-1);
gest_40_rep_5_data = data(1:find(labels==40,1)-1,:);
data = data(find(labels==40,1):end,:);
labels = labels(find(labels==40,1):end);
gest_40_rep_5_lbl = [gest_40_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_40_rep_5_data = [gest_40_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 40th gesture - 6th repetition
gest_40_rep_6_lbl = labels(1:find(labels==40,1)-1);
gest_40_rep_6_data = data(1:find(labels==40,1)-1,:);
data = data(find(labels==40,1):end,:);
labels = labels(find(labels==40,1):end);
gest_40_rep_6_lbl = [gest_40_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_40_rep_6_data = [gest_40_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 41th gesture - 1st repetition
gest_41_rep_1_lbl = labels(1:find(labels==41,1)-1);
gest_41_rep_1_data = data(1:find(labels==41,1)-1,:);
data = data(find(labels==41,1):end,:);
labels = labels(find(labels==41,1):end);
gest_41_rep_1_lbl = [gest_41_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_41_rep_1_data = [gest_41_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 41th gesture - 2nd repetition
gest_41_rep_2_lbl = labels(1:find(labels==41,1)-1);
gest_41_rep_2_data = data(1:find(labels==41,1)-1,:);
data = data(find(labels==41,1):end,:);
labels = labels(find(labels==41,1):end);
gest_41_rep_2_lbl = [gest_41_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_41_rep_2_data = [gest_41_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 41th gesture - 3rd repetition
gest_41_rep_3_lbl = labels(1:find(labels==41,1)-1);
gest_41_rep_3_data = data(1:find(labels==41,1)-1,:);
data = data(find(labels==41,1):end,:);
labels = labels(find(labels==41,1):end);
gest_41_rep_3_lbl = [gest_41_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_41_rep_3_data = [gest_41_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 41th gesture - 4th repetition
gest_41_rep_4_lbl = labels(1:find(labels==41,1)-1);
gest_41_rep_4_data = data(1:find(labels==41,1)-1,:);
data = data(find(labels==41,1):end,:);
labels = labels(find(labels==41,1):end);
gest_41_rep_4_lbl = [gest_41_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_41_rep_4_data = [gest_41_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 41th gesture - 5th repetition
gest_41_rep_5_lbl = labels(1:find(labels==41,1)-1);
gest_41_rep_5_data = data(1:find(labels==41,1)-1,:);
data = data(find(labels==41,1):end,:);
labels = labels(find(labels==41,1):end);
gest_41_rep_5_lbl = [gest_41_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_41_rep_5_data = [gest_41_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 41th gesture - 6th repetition
gest_41_rep_6_lbl = labels(1:find(labels==41,1)-1);
gest_41_rep_6_data = data(1:find(labels==41,1)-1,:);
data = data(find(labels==41,1):end,:);
labels = labels(find(labels==41,1):end);
gest_41_rep_6_lbl = [gest_41_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_41_rep_6_data = [gest_41_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 42th gesture - 1st repetition
gest_42_rep_1_lbl = labels(1:find(labels==42,1)-1);
gest_42_rep_1_data = data(1:find(labels==42,1)-1,:);
data = data(find(labels==42,1):end,:);
labels = labels(find(labels==42,1):end);
gest_42_rep_1_lbl = [gest_42_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_42_rep_1_data = [gest_42_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 42th gesture - 2nd repetition
gest_42_rep_2_lbl = labels(1:find(labels==42,1)-1);
gest_42_rep_2_data = data(1:find(labels==42,1)-1,:);
data = data(find(labels==42,1):end,:);
labels = labels(find(labels==42,1):end);
gest_42_rep_2_lbl = [gest_42_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_42_rep_2_data = [gest_42_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 42th gesture - 3rd repetition
gest_42_rep_3_lbl = labels(1:find(labels==42,1)-1);
gest_42_rep_3_data = data(1:find(labels==42,1)-1,:);
data = data(find(labels==42,1):end,:);
labels = labels(find(labels==42,1):end);
gest_42_rep_3_lbl = [gest_42_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_42_rep_3_data = [gest_42_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 42th gesture - 4th repetition
gest_42_rep_4_lbl = labels(1:find(labels==42,1)-1);
gest_42_rep_4_data = data(1:find(labels==42,1)-1,:);
data = data(find(labels==42,1):end,:);
labels = labels(find(labels==42,1):end);
gest_42_rep_4_lbl = [gest_42_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_42_rep_4_data = [gest_42_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 42th gesture - 5th repetition
gest_42_rep_5_lbl = labels(1:find(labels==42,1)-1);
gest_42_rep_5_data = data(1:find(labels==42,1)-1,:);
data = data(find(labels==42,1):end,:);
labels = labels(find(labels==42,1):end);
gest_42_rep_5_lbl = [gest_42_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_42_rep_5_data = [gest_42_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 42th gesture - 6th repetition
gest_42_rep_6_lbl = labels(1:find(labels==42,1)-1);
gest_42_rep_6_data = data(1:find(labels==42,1)-1,:);
data = data(find(labels==42,1):end,:);
labels = labels(find(labels==42,1):end);
gest_42_rep_6_lbl = [gest_42_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_42_rep_6_data = [gest_42_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 43th gesture - 1st repetition
gest_43_rep_1_lbl = labels(1:find(labels==43,1)-1);
gest_43_rep_1_data = data(1:find(labels==43,1)-1,:);
data = data(find(labels==43,1):end,:);
labels = labels(find(labels==43,1):end);
gest_43_rep_1_lbl = [gest_43_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_43_rep_1_data = [gest_43_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 43th gesture - 2nd repetition
gest_43_rep_2_lbl = labels(1:find(labels==43,1)-1);
gest_43_rep_2_data = data(1:find(labels==43,1)-1,:);
data = data(find(labels==43,1):end,:);
labels = labels(find(labels==43,1):end);
gest_43_rep_2_lbl = [gest_43_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_43_rep_2_data = [gest_43_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 43th gesture - 3rd repetition
gest_43_rep_3_lbl = labels(1:find(labels==43,1)-1);
gest_43_rep_3_data = data(1:find(labels==43,1)-1,:);
data = data(find(labels==43,1):end,:);
labels = labels(find(labels==43,1):end);
gest_43_rep_3_lbl = [gest_43_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_43_rep_3_data = [gest_43_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 43th gesture - 4th repetition
gest_43_rep_4_lbl = labels(1:find(labels==43,1)-1);
gest_43_rep_4_data = data(1:find(labels==43,1)-1,:);
data = data(find(labels==43,1):end,:);
labels = labels(find(labels==43,1):end);
gest_43_rep_4_lbl = [gest_43_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_43_rep_4_data = [gest_43_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 43th gesture - 5th repetition
gest_43_rep_5_lbl = labels(1:find(labels==43,1)-1);
gest_43_rep_5_data = data(1:find(labels==43,1)-1,:);
data = data(find(labels==43,1):end,:);
labels = labels(find(labels==43,1):end);
gest_43_rep_5_lbl = [gest_43_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_43_rep_5_data = [gest_43_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 43th gesture - 6th repetition
gest_43_rep_6_lbl = labels(1:find(labels==43,1)-1);
gest_43_rep_6_data = data(1:find(labels==43,1)-1,:);
data = data(find(labels==43,1):end,:);
labels = labels(find(labels==43,1):end);
gest_43_rep_6_lbl = [gest_43_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_43_rep_6_data = [gest_43_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 44th gesture - 1st repetition
gest_44_rep_1_lbl = labels(1:find(labels==44,1)-1);
gest_44_rep_1_data = data(1:find(labels==44,1)-1,:);
data = data(find(labels==44,1):end,:);
labels = labels(find(labels==44,1):end);
gest_44_rep_1_lbl = [gest_44_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_44_rep_1_data = [gest_44_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 44th gesture - 2nd repetition
gest_44_rep_2_lbl = labels(1:find(labels==44,1)-1);
gest_44_rep_2_data = data(1:find(labels==44,1)-1,:);
data = data(find(labels==44,1):end,:);
labels = labels(find(labels==44,1):end);
gest_44_rep_2_lbl = [gest_44_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_44_rep_2_data = [gest_44_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 44th gesture - 3rd repetition
gest_44_rep_3_lbl = labels(1:find(labels==44,1)-1);
gest_44_rep_3_data = data(1:find(labels==44,1)-1,:);
data = data(find(labels==44,1):end,:);
labels = labels(find(labels==44,1):end);
gest_44_rep_3_lbl = [gest_44_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_44_rep_3_data = [gest_44_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 44th gesture - 4th repetition
gest_44_rep_4_lbl = labels(1:find(labels==44,1)-1);
gest_44_rep_4_data = data(1:find(labels==44,1)-1,:);
data = data(find(labels==44,1):end,:);
labels = labels(find(labels==44,1):end);
gest_44_rep_4_lbl = [gest_44_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_44_rep_4_data = [gest_44_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 44th gesture - 5th repetition
gest_44_rep_5_lbl = labels(1:find(labels==44,1)-1);
gest_44_rep_5_data = data(1:find(labels==44,1)-1,:);
data = data(find(labels==44,1):end,:);
labels = labels(find(labels==44,1):end);
gest_44_rep_5_lbl = [gest_44_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_44_rep_5_data = [gest_44_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 44th gesture - 6th repetition
gest_44_rep_6_lbl = labels(1:find(labels==44,1)-1);
gest_44_rep_6_data = data(1:find(labels==44,1)-1,:);
data = data(find(labels==44,1):end,:);
labels = labels(find(labels==44,1):end);
gest_44_rep_6_lbl = [gest_44_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_44_rep_6_data = [gest_44_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 45th gesture - 1st repetition
gest_45_rep_1_lbl = labels(1:find(labels==45,1)-1);
gest_45_rep_1_data = data(1:find(labels==45,1)-1,:);
data = data(find(labels==45,1):end,:);
labels = labels(find(labels==45,1):end);
gest_45_rep_1_lbl = [gest_45_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_45_rep_1_data = [gest_45_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 45th gesture - 2nd repetition
gest_45_rep_2_lbl = labels(1:find(labels==45,1)-1);
gest_45_rep_2_data = data(1:find(labels==45,1)-1,:);
data = data(find(labels==45,1):end,:);
labels = labels(find(labels==45,1):end);
gest_45_rep_2_lbl = [gest_45_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_45_rep_2_data = [gest_45_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 45th gesture - 3th repetition
gest_45_rep_3_lbl = labels(1:find(labels==45,1)-1);
gest_45_rep_3_data = data(1:find(labels==45,1)-1,:);
data = data(find(labels==45,1):end,:);
labels = labels(find(labels==45,1):end);
gest_45_rep_3_lbl = [gest_45_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_45_rep_3_data = [gest_45_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 45th gesture - 4th repetition
gest_45_rep_4_lbl = labels(1:find(labels==45,1)-1);
gest_45_rep_4_data = data(1:find(labels==45,1)-1,:);
data = data(find(labels==45,1):end,:);
labels = labels(find(labels==45,1):end);
gest_45_rep_4_lbl = [gest_45_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_45_rep_4_data = [gest_45_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 45th gesture - 5th repetition
gest_45_rep_5_lbl = labels(1:find(labels==45,1)-1);
gest_45_rep_5_data = data(1:find(labels==45,1)-1,:);
data = data(find(labels==45,1):end,:);
labels = labels(find(labels==45,1):end);
gest_45_rep_5_lbl = [gest_45_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_45_rep_5_data = [gest_45_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 45th gesture - 6th repetition
gest_45_rep_6_lbl = labels(1:find(labels==45,1)-1);
gest_45_rep_6_data = data(1:find(labels==45,1)-1,:);
data = data(find(labels==45,1):end,:);
labels = labels(find(labels==45,1):end);
gest_45_rep_6_lbl = [gest_45_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_45_rep_6_data = [gest_45_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 46th gesture - 1st repetition
gest_46_rep_1_lbl = labels(1:find(labels==46,1)-1);
gest_46_rep_1_data = data(1:find(labels==46,1)-1,:);
data = data(find(labels==46,1):end,:);
labels = labels(find(labels==46,1):end);
gest_46_rep_1_lbl = [gest_46_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_46_rep_1_data = [gest_46_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 46th gesture - 2nd repetition
gest_46_rep_2_lbl = labels(1:find(labels==46,1)-1);
gest_46_rep_2_data = data(1:find(labels==46,1)-1,:);
data = data(find(labels==46,1):end,:);
labels = labels(find(labels==46,1):end);
gest_46_rep_2_lbl = [gest_46_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_46_rep_2_data = [gest_46_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 46th gesture - 3th repetition
gest_46_rep_3_lbl = labels(1:find(labels==46,1)-1);
gest_46_rep_3_data = data(1:find(labels==46,1)-1,:);
data = data(find(labels==46,1):end,:);
labels = labels(find(labels==46,1):end);
gest_46_rep_3_lbl = [gest_46_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_46_rep_3_data = [gest_46_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 46th gesture - 4th repetition
gest_46_rep_4_lbl = labels(1:find(labels==46,1)-1);
gest_46_rep_4_data = data(1:find(labels==46,1)-1,:);
data = data(find(labels==46,1):end,:);
labels = labels(find(labels==46,1):end);
gest_46_rep_4_lbl = [gest_46_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_46_rep_4_data = [gest_46_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 46th gesture - 5th repetition
gest_46_rep_5_lbl = labels(1:find(labels==46,1)-1);
gest_46_rep_5_data = data(1:find(labels==46,1)-1,:);
data = data(find(labels==46,1):end,:);
labels = labels(find(labels==46,1):end);
gest_46_rep_5_lbl = [gest_46_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_46_rep_5_data = [gest_46_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 46th gesture - 6th repetition
gest_46_rep_6_lbl = labels(1:find(labels==46,1)-1);
gest_46_rep_6_data = data(1:find(labels==46,1)-1,:);
data = data(find(labels==46,1):end,:);
labels = labels(find(labels==46,1):end);
gest_46_rep_6_lbl = [gest_46_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_46_rep_6_data = [gest_46_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 47th gesture - 1st repetition
gest_47_rep_1_lbl = labels(1:find(labels==47,1)-1);
gest_47_rep_1_data = data(1:find(labels==47,1)-1,:);
data = data(find(labels==47,1):end,:);
labels = labels(find(labels==47,1):end);
gest_47_rep_1_lbl = [gest_47_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_47_rep_1_data = [gest_47_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 47th gesture - 2nd repetition
gest_47_rep_2_lbl = labels(1:find(labels==47,1)-1);
gest_47_rep_2_data = data(1:find(labels==47,1)-1,:);
data = data(find(labels==47,1):end,:);
labels = labels(find(labels==47,1):end);
gest_47_rep_2_lbl = [gest_47_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_47_rep_2_data = [gest_47_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 47th gesture - 3rd repetition
gest_47_rep_3_lbl = labels(1:find(labels==47,1)-1);
gest_47_rep_3_data = data(1:find(labels==47,1)-1,:);
data = data(find(labels==47,1):end,:);
labels = labels(find(labels==47,1):end);
gest_47_rep_3_lbl = [gest_47_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_47_rep_3_data = [gest_47_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 47th gesture - 4th repetition
gest_47_rep_4_lbl = labels(1:find(labels==47,1)-1);
gest_47_rep_4_data = data(1:find(labels==47,1)-1,:);
data = data(find(labels==47,1):end,:);
labels = labels(find(labels==47,1):end);
gest_47_rep_4_lbl = [gest_47_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_47_rep_4_data = [gest_47_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 47th gesture - 5th repetition
gest_47_rep_5_lbl = labels(1:find(labels==47,1)-1);
gest_47_rep_5_data = data(1:find(labels==47,1)-1,:);
data = data(find(labels==47,1):end,:);
labels = labels(find(labels==47,1):end);
gest_47_rep_5_lbl = [gest_47_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_47_rep_5_data = [gest_47_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 47th gesture - 6th repetition
gest_47_rep_6_lbl = labels(1:find(labels==47,1)-1);
gest_47_rep_6_data = data(1:find(labels==47,1)-1,:);
data = data(find(labels==47,1):end,:);
labels = labels(find(labels==47,1):end);
gest_47_rep_6_lbl = [gest_47_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_47_rep_6_data = [gest_47_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 48th gesture - 1st repetition
gest_48_rep_1_lbl = labels(1:find(labels==48,1)-1);
gest_48_rep_1_data = data(1:find(labels==48,1)-1,:);
data = data(find(labels==48,1):end,:);
labels = labels(find(labels==48,1):end);
gest_48_rep_1_lbl = [gest_48_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_48_rep_1_data = [gest_48_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 48th gesture - 2nd repetition
gest_48_rep_2_lbl = labels(1:find(labels==48,1)-1);
gest_48_rep_2_data = data(1:find(labels==48,1)-1,:);
data = data(find(labels==48,1):end,:);
labels = labels(find(labels==48,1):end);
gest_48_rep_2_lbl = [gest_48_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_48_rep_2_data = [gest_48_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 48th gesture - 3rd repetition
gest_48_rep_3_lbl = labels(1:find(labels==48,1)-1);
gest_48_rep_3_data = data(1:find(labels==48,1)-1,:);
data = data(find(labels==48,1):end,:);
labels = labels(find(labels==48,1):end);
gest_48_rep_3_lbl = [gest_48_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_48_rep_3_data = [gest_48_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 48th gesture - 4th repetition
gest_48_rep_4_lbl = labels(1:find(labels==48,1)-1);
gest_48_rep_4_data = data(1:find(labels==48,1)-1,:);
data = data(find(labels==48,1):end,:);
labels = labels(find(labels==48,1):end);
gest_48_rep_4_lbl = [gest_48_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_48_rep_4_data = [gest_48_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 48th gesture - 5th repetition
gest_48_rep_5_lbl = labels(1:find(labels==48,1)-1);
gest_48_rep_5_data = data(1:find(labels==48,1)-1,:);
data = data(find(labels==48,1):end,:);
labels = labels(find(labels==48,1):end);
gest_48_rep_5_lbl = [gest_48_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_48_rep_5_data = [gest_48_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 48th gesture - 6th repetition
gest_48_rep_6_lbl = labels(1:find(labels==48,1)-1);
gest_48_rep_6_data = data(1:find(labels==48,1)-1,:);
data = data(find(labels==48,1):end,:);
labels = labels(find(labels==48,1):end);
gest_48_rep_6_lbl = [gest_48_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_48_rep_6_data = [gest_48_rep_6_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

%----------------------------------------------
% 49th gesture - 1st repetition
gest_49_rep_1_lbl = labels(1:find(labels==49,1)-1);
gest_49_rep_1_data = data(1:find(labels==49,1)-1,:);
data = data(find(labels==49,1):end,:);
labels = labels(find(labels==49,1):end);
gest_49_rep_1_lbl = [gest_49_rep_1_lbl; labels(1:find(labels==0,1)-1)];
gest_49_rep_1_data = [gest_49_rep_1_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 49th gesture - 2nd repetition
gest_49_rep_2_lbl = labels(1:find(labels==49,1)-1);
gest_49_rep_2_data = data(1:find(labels==49,1)-1,:);
data = data(find(labels==49,1):end,:);
labels = labels(find(labels==49,1):end);
gest_49_rep_2_lbl = [gest_49_rep_2_lbl; labels(1:find(labels==0,1)-1)];
gest_49_rep_2_data = [gest_49_rep_2_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 49th gesture - 3rd repetition
gest_49_rep_3_lbl = labels(1:find(labels==49,1)-1);
gest_49_rep_3_data = data(1:find(labels==49,1)-1,:);
data = data(find(labels==49,1):end,:);
labels = labels(find(labels==49,1):end);
gest_49_rep_3_lbl = [gest_49_rep_3_lbl; labels(1:find(labels==0,1)-1)];
gest_49_rep_3_data = [gest_49_rep_3_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 49th gesture - 4th repetition
gest_49_rep_4_lbl = labels(1:find(labels==49,1)-1);
gest_49_rep_4_data = data(1:find(labels==49,1)-1,:);
data = data(find(labels==49,1):end,:);
labels = labels(find(labels==49,1):end);
gest_49_rep_4_lbl = [gest_49_rep_4_lbl; labels(1:find(labels==0,1)-1)];
gest_49_rep_4_data = [gest_49_rep_4_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 49th gesture - 5th repetition
gest_49_rep_5_lbl = labels(1:find(labels==49,1)-1);
gest_49_rep_5_data = data(1:find(labels==49,1)-1,:);
data = data(find(labels==49,1):end,:);
labels = labels(find(labels==49,1):end);
gest_49_rep_5_lbl = [gest_49_rep_5_lbl; labels(1:find(labels==0,1)-1)];
gest_49_rep_5_data = [gest_49_rep_5_data; data(1:find(labels==0,1)-1,:)];
data = data(find(labels==0,1):end,:);
labels = labels(find(labels==0,1):end);

% 49th gesture - 6th repetition
gest_49_rep_6_lbl = labels(1:find(labels==49,1)-1);
gest_49_rep_6_data = data(1:find(labels==49,1)-1,:);
data = data(find(labels==49,1):end,:);
labels = labels(find(labels==49,1):end);
gest_49_rep_6_lbl = [gest_49_rep_6_lbl; labels(1:find(labels==0,1)-1)];
gest_49_rep_6_data = [gest_49_rep_6_data; data(1:find(labels==0,1)-1,:)];

session_1_lbl = [gest_1_rep_1_lbl; gest_2_rep_1_lbl; gest_3_rep_1_lbl; gest_4_rep_1_lbl;gest_5_rep_1_lbl;gest_6_rep_1_lbl;gest_7_rep_1_lbl;gest_8_rep_1_lbl;gest_9_rep_1_lbl;gest_10_rep_1_lbl;
    gest_11_rep_1_lbl;gest_12_rep_1_lbl;gest_13_rep_1_lbl;gest_14_rep_1_lbl;gest_15_rep_1_lbl;gest_16_rep_1_lbl;gest_17_rep_1_lbl;gest_18_rep_1_lbl;gest_19_rep_1_lbl;gest_20_rep_1_lbl;gest_21_rep_1_lbl;
    gest_22_rep_1_lbl;gest_23_rep_1_lbl;gest_24_rep_1_lbl;gest_25_rep_1_lbl;gest_26_rep_1_lbl;gest_27_rep_1_lbl;gest_28_rep_1_lbl;gest_29_rep_1_lbl;gest_30_rep_1_lbl;gest_31_rep_1_lbl;gest_32_rep_1_lbl;
    gest_33_rep_1_lbl;gest_34_rep_1_lbl;gest_35_rep_1_lbl;gest_36_rep_1_lbl;gest_37_rep_1_lbl;gest_38_rep_1_lbl;gest_39_rep_1_lbl;gest_40_rep_1_lbl;gest_41_rep_1_lbl;gest_42_rep_1_lbl;gest_43_rep_1_lbl;
    gest_44_rep_1_lbl;gest_45_rep_1_lbl;gest_46_rep_1_lbl;gest_47_rep_1_lbl;gest_48_rep_1_lbl;gest_49_rep_1_lbl];

session_1_data = [gest_1_rep_1_data; gest_2_rep_1_data; gest_3_rep_1_data; gest_4_rep_1_data; gest_5_rep_1_data;gest_6_rep_1_data;gest_7_rep_1_data;gest_8_rep_1_data;gest_9_rep_1_data;gest_10_rep_1_data;
    gest_11_rep_1_data;gest_12_rep_1_data;gest_13_rep_1_data;gest_14_rep_1_data;gest_15_rep_1_data;gest_16_rep_1_data;gest_17_rep_1_data;gest_18_rep_1_data;gest_19_rep_1_data;gest_20_rep_1_data;gest_21_rep_1_data;
    gest_22_rep_1_data;gest_23_rep_1_data;gest_24_rep_1_data;gest_25_rep_1_data;gest_26_rep_1_data;gest_27_rep_1_data;gest_28_rep_1_data;gest_29_rep_1_data;gest_30_rep_1_data;gest_31_rep_1_data;gest_32_rep_1_data;
    gest_33_rep_1_data;gest_34_rep_1_data;gest_35_rep_1_data;gest_36_rep_1_data;gest_37_rep_1_data;gest_38_rep_1_data;gest_39_rep_1_data;gest_40_rep_1_data;gest_41_rep_1_data;gest_42_rep_1_data;gest_43_rep_1_data;
    gest_44_rep_1_data;gest_45_rep_1_data;gest_46_rep_1_data;gest_47_rep_1_data;gest_48_rep_1_data;gest_49_rep_1_data];

session_2_lbl = [gest_1_rep_2_lbl; gest_2_rep_2_lbl; gest_3_rep_2_lbl; gest_4_rep_2_lbl;gest_5_rep_2_lbl;gest_6_rep_2_lbl;gest_7_rep_2_lbl;gest_8_rep_2_lbl;gest_9_rep_2_lbl;gest_10_rep_2_lbl;
    gest_11_rep_2_lbl;gest_12_rep_2_lbl;gest_13_rep_2_lbl;gest_14_rep_2_lbl;gest_15_rep_2_lbl;gest_16_rep_2_lbl;gest_17_rep_2_lbl;gest_18_rep_2_lbl;gest_19_rep_2_lbl;gest_20_rep_2_lbl;gest_21_rep_2_lbl;
    gest_22_rep_2_lbl;gest_23_rep_2_lbl;gest_24_rep_2_lbl;gest_25_rep_2_lbl;gest_26_rep_2_lbl;gest_27_rep_2_lbl;gest_28_rep_2_lbl;gest_29_rep_2_lbl;gest_30_rep_2_lbl;gest_31_rep_2_lbl;gest_32_rep_2_lbl;
    gest_33_rep_2_lbl;gest_34_rep_2_lbl;gest_35_rep_2_lbl;gest_36_rep_2_lbl;gest_37_rep_2_lbl;gest_38_rep_2_lbl;gest_39_rep_2_lbl;gest_40_rep_2_lbl;gest_41_rep_2_lbl;gest_42_rep_2_lbl;gest_43_rep_2_lbl;
    gest_44_rep_2_lbl;gest_45_rep_2_lbl;gest_46_rep_2_lbl;gest_47_rep_2_lbl;gest_48_rep_2_lbl;gest_49_rep_2_lbl];

session_2_data = [gest_1_rep_2_data; gest_2_rep_2_data; gest_3_rep_2_data; gest_4_rep_2_data;gest_5_rep_2_data;gest_6_rep_2_data;gest_7_rep_2_data;gest_8_rep_2_data;gest_9_rep_2_data;gest_10_rep_2_data;
    gest_11_rep_2_data;gest_12_rep_2_data;gest_13_rep_2_data;gest_14_rep_2_data;gest_15_rep_2_data;gest_16_rep_2_data;gest_17_rep_2_data;gest_18_rep_2_data;gest_19_rep_2_data;gest_20_rep_2_data;gest_21_rep_2_data;
    gest_22_rep_2_data;gest_23_rep_2_data;gest_24_rep_2_data;gest_25_rep_2_data;gest_26_rep_2_data;gest_27_rep_2_data;gest_28_rep_2_data;gest_29_rep_2_data;gest_30_rep_2_data;gest_31_rep_2_data;gest_32_rep_2_data;
    gest_33_rep_2_data;gest_34_rep_2_data;gest_35_rep_2_data;gest_36_rep_2_data;gest_37_rep_2_data;gest_38_rep_2_data;gest_39_rep_2_data;gest_40_rep_2_data;gest_41_rep_2_data;gest_42_rep_2_data;gest_43_rep_2_data;
    gest_44_rep_2_data;gest_45_rep_2_data;gest_46_rep_2_data;gest_47_rep_2_data;gest_48_rep_2_data;gest_49_rep_2_data];

session_3_lbl = [gest_1_rep_3_lbl; gest_2_rep_3_lbl; gest_3_rep_3_lbl; gest_4_rep_3_lbl;gest_5_rep_3_lbl;gest_6_rep_3_lbl;gest_7_rep_3_lbl;gest_8_rep_3_lbl;gest_9_rep_3_lbl;gest_10_rep_3_lbl;
    gest_11_rep_3_lbl;gest_12_rep_3_lbl;gest_13_rep_3_lbl;gest_14_rep_3_lbl;gest_15_rep_3_lbl;gest_16_rep_3_lbl;gest_17_rep_3_lbl;gest_18_rep_3_lbl;gest_19_rep_3_lbl;gest_20_rep_3_lbl;gest_21_rep_3_lbl;
    gest_22_rep_3_lbl;gest_23_rep_3_lbl;gest_24_rep_3_lbl;gest_25_rep_3_lbl;gest_26_rep_3_lbl;gest_27_rep_3_lbl;gest_28_rep_3_lbl;gest_29_rep_3_lbl;gest_30_rep_3_lbl;gest_31_rep_3_lbl;gest_32_rep_3_lbl;
    gest_33_rep_3_lbl;gest_34_rep_3_lbl;gest_35_rep_3_lbl;gest_36_rep_3_lbl;gest_37_rep_3_lbl;gest_38_rep_3_lbl;gest_39_rep_3_lbl;gest_40_rep_3_lbl;gest_41_rep_3_lbl;gest_42_rep_3_lbl;gest_43_rep_3_lbl;
    gest_44_rep_3_lbl;gest_45_rep_3_lbl;gest_46_rep_3_lbl;gest_47_rep_3_lbl;gest_48_rep_3_lbl;gest_49_rep_3_lbl];

session_3_data = [gest_1_rep_3_data; gest_2_rep_3_data; gest_3_rep_3_data; gest_4_rep_3_data;gest_5_rep_3_data;gest_6_rep_3_data;gest_7_rep_3_data;gest_8_rep_3_data;gest_9_rep_3_data;gest_10_rep_3_data;
    gest_11_rep_3_data;gest_12_rep_3_data;gest_13_rep_3_data;gest_14_rep_3_data;gest_15_rep_3_data;gest_16_rep_3_data;gest_17_rep_3_data;gest_18_rep_3_data;gest_19_rep_3_data;gest_20_rep_3_data;gest_21_rep_3_data;
    gest_22_rep_3_data;gest_23_rep_3_data;gest_24_rep_3_data;gest_25_rep_3_data;gest_26_rep_3_data;gest_27_rep_3_data;gest_28_rep_3_data;gest_29_rep_3_data;gest_30_rep_3_data;gest_31_rep_3_data;gest_32_rep_3_data;
    gest_33_rep_3_data;gest_34_rep_3_data;gest_35_rep_3_data;gest_36_rep_3_data;gest_37_rep_3_data;gest_38_rep_3_data;gest_39_rep_3_data;gest_40_rep_3_data;gest_41_rep_3_data;gest_42_rep_3_data;gest_43_rep_3_data;
    gest_44_rep_3_data;gest_45_rep_3_data;gest_46_rep_3_data;gest_47_rep_3_data;gest_48_rep_3_data;gest_49_rep_3_data];

session_4_lbl = [gest_1_rep_4_lbl; gest_2_rep_4_lbl; gest_3_rep_4_lbl; gest_4_rep_4_lbl;gest_5_rep_4_lbl;gest_6_rep_4_lbl;gest_7_rep_4_lbl;gest_8_rep_4_lbl;gest_9_rep_4_lbl;gest_10_rep_4_lbl;
    gest_11_rep_4_lbl;gest_12_rep_4_lbl;gest_13_rep_4_lbl;gest_14_rep_4_lbl;gest_15_rep_4_lbl;gest_16_rep_4_lbl;gest_17_rep_4_lbl;gest_18_rep_4_lbl;gest_19_rep_4_lbl;gest_20_rep_4_lbl;gest_21_rep_4_lbl;
    gest_22_rep_4_lbl;gest_23_rep_4_lbl;gest_24_rep_4_lbl;gest_25_rep_4_lbl;gest_26_rep_4_lbl;gest_27_rep_4_lbl;gest_28_rep_4_lbl;gest_29_rep_4_lbl;gest_30_rep_4_lbl;gest_31_rep_4_lbl;gest_32_rep_4_lbl;
    gest_33_rep_4_lbl;gest_34_rep_4_lbl;gest_35_rep_4_lbl;gest_36_rep_4_lbl;gest_37_rep_4_lbl;gest_38_rep_4_lbl;gest_39_rep_4_lbl;gest_40_rep_4_lbl;gest_41_rep_4_lbl;gest_42_rep_4_lbl;gest_43_rep_4_lbl;
    gest_44_rep_4_lbl;gest_45_rep_4_lbl;gest_46_rep_4_lbl;gest_47_rep_4_lbl;gest_48_rep_4_lbl;gest_49_rep_4_lbl];

session_4_data = [gest_1_rep_4_data; gest_2_rep_4_data; gest_3_rep_4_data; gest_4_rep_4_data;gest_5_rep_4_data;gest_6_rep_4_data;gest_7_rep_4_data;gest_8_rep_4_data;gest_9_rep_4_data;gest_10_rep_4_data;
    gest_11_rep_4_data;gest_12_rep_4_data;gest_13_rep_4_data;gest_14_rep_4_data;gest_15_rep_4_data;gest_16_rep_4_data;gest_17_rep_4_data;gest_18_rep_4_data;gest_19_rep_4_data;gest_20_rep_4_data;gest_21_rep_4_data;
    gest_22_rep_4_data;gest_23_rep_4_data;gest_24_rep_4_data;gest_25_rep_4_data;gest_26_rep_4_data;gest_27_rep_4_data;gest_28_rep_4_data;gest_29_rep_4_data;gest_30_rep_4_data;gest_31_rep_4_data;gest_32_rep_4_data;
    gest_33_rep_4_data;gest_34_rep_4_data;gest_35_rep_4_data;gest_36_rep_4_data;gest_37_rep_4_data;gest_38_rep_4_data;gest_39_rep_4_data;gest_40_rep_4_data;gest_41_rep_4_data;gest_42_rep_4_data;gest_43_rep_4_data;
    gest_44_rep_4_data;gest_45_rep_4_data;gest_46_rep_4_data;gest_47_rep_4_data;gest_48_rep_4_data;gest_49_rep_4_data];

session_5_lbl = [gest_1_rep_5_lbl; gest_2_rep_5_lbl; gest_3_rep_5_lbl; gest_4_rep_5_lbl;gest_5_rep_5_lbl;gest_6_rep_5_lbl;gest_7_rep_5_lbl;gest_8_rep_5_lbl;gest_9_rep_5_lbl;gest_10_rep_5_lbl;
    gest_11_rep_5_lbl;gest_12_rep_5_lbl;gest_13_rep_5_lbl;gest_14_rep_5_lbl;gest_15_rep_5_lbl;gest_16_rep_5_lbl;gest_17_rep_5_lbl;gest_18_rep_5_lbl;gest_19_rep_5_lbl;gest_20_rep_5_lbl;gest_21_rep_5_lbl;
    gest_22_rep_5_lbl;gest_23_rep_5_lbl;gest_24_rep_5_lbl;gest_25_rep_5_lbl;gest_26_rep_5_lbl;gest_27_rep_5_lbl;gest_28_rep_5_lbl;gest_29_rep_5_lbl;gest_30_rep_5_lbl;gest_31_rep_5_lbl;gest_32_rep_5_lbl;
    gest_33_rep_5_lbl;gest_34_rep_5_lbl;gest_35_rep_5_lbl;gest_36_rep_5_lbl;gest_37_rep_5_lbl;gest_38_rep_5_lbl;gest_39_rep_5_lbl;gest_40_rep_5_lbl;gest_41_rep_5_lbl;gest_42_rep_5_lbl;gest_43_rep_5_lbl;
    gest_44_rep_5_lbl;gest_45_rep_5_lbl;gest_46_rep_5_lbl;gest_47_rep_5_lbl;gest_48_rep_5_lbl;gest_49_rep_5_lbl];

session_5_data = [gest_1_rep_5_data; gest_2_rep_5_data; gest_3_rep_5_data; gest_4_rep_5_data;gest_5_rep_5_data;gest_6_rep_5_data;gest_7_rep_5_data;gest_8_rep_5_data;gest_9_rep_5_data;gest_10_rep_5_data;
    gest_11_rep_5_data;gest_12_rep_5_data;gest_13_rep_5_data;gest_14_rep_5_data;gest_15_rep_5_data;gest_16_rep_5_data;gest_17_rep_5_data;gest_18_rep_5_data;gest_19_rep_5_data;gest_20_rep_5_data;gest_21_rep_5_data;
    gest_22_rep_5_data;gest_23_rep_5_data;gest_24_rep_5_data;gest_25_rep_5_data;gest_26_rep_5_data;gest_27_rep_5_data;gest_28_rep_5_data;gest_29_rep_5_data;gest_30_rep_5_data;gest_31_rep_5_data;gest_32_rep_5_data;
    gest_33_rep_5_data;gest_34_rep_5_data;gest_35_rep_5_data;gest_36_rep_5_data;gest_37_rep_5_data;gest_38_rep_5_data;gest_39_rep_5_data;gest_40_rep_5_data;gest_41_rep_5_data;gest_42_rep_5_data;gest_43_rep_5_data;
    gest_44_rep_5_data;gest_45_rep_5_data;gest_46_rep_5_data;gest_47_rep_5_data;gest_48_rep_5_data;gest_49_rep_5_data];

session_6_lbl = [gest_1_rep_6_lbl; gest_2_rep_6_lbl; gest_3_rep_6_lbl; gest_4_rep_6_lbl;gest_5_rep_6_lbl;gest_6_rep_6_lbl;gest_7_rep_6_lbl;gest_8_rep_6_lbl;gest_9_rep_6_lbl;gest_10_rep_6_lbl;
    gest_11_rep_6_lbl;gest_12_rep_6_lbl;gest_13_rep_6_lbl;gest_14_rep_6_lbl;gest_15_rep_6_lbl;gest_16_rep_6_lbl;gest_17_rep_6_lbl;gest_18_rep_6_lbl;gest_19_rep_6_lbl;gest_20_rep_6_lbl;gest_21_rep_6_lbl;
    gest_22_rep_6_lbl;gest_23_rep_6_lbl;gest_24_rep_6_lbl;gest_25_rep_6_lbl;gest_26_rep_6_lbl;gest_27_rep_6_lbl;gest_28_rep_6_lbl;gest_29_rep_6_lbl;gest_30_rep_6_lbl;gest_31_rep_6_lbl;gest_32_rep_6_lbl;
    gest_33_rep_6_lbl;gest_34_rep_6_lbl;gest_35_rep_6_lbl;gest_36_rep_6_lbl;gest_37_rep_6_lbl;gest_38_rep_6_lbl;gest_39_rep_6_lbl;gest_40_rep_6_lbl;gest_41_rep_6_lbl;gest_42_rep_6_lbl;gest_43_rep_6_lbl;
    gest_44_rep_6_lbl;gest_45_rep_6_lbl;gest_46_rep_6_lbl;gest_47_rep_6_lbl;gest_48_rep_6_lbl;gest_49_rep_6_lbl];

session_6_data = [gest_1_rep_6_data; gest_2_rep_6_data; gest_3_rep_6_data; gest_4_rep_6_data;gest_5_rep_6_data;gest_6_rep_6_data;gest_7_rep_6_data;gest_8_rep_6_data;gest_9_rep_6_data;gest_10_rep_6_data;
    gest_11_rep_6_data;gest_12_rep_6_data;gest_13_rep_6_data;gest_14_rep_6_data;gest_15_rep_6_data;gest_16_rep_6_data;gest_17_rep_6_data;gest_18_rep_6_data;gest_19_rep_6_data;gest_20_rep_6_data;gest_21_rep_6_data;
    gest_22_rep_6_data;gest_23_rep_6_data;gest_24_rep_6_data;gest_25_rep_6_data;gest_26_rep_6_data;gest_27_rep_6_data;gest_28_rep_6_data;gest_29_rep_6_data;gest_30_rep_6_data;gest_31_rep_6_data;gest_32_rep_6_data;
    gest_33_rep_6_data;gest_34_rep_6_data;gest_35_rep_6_data;gest_36_rep_6_data;gest_37_rep_6_data;gest_38_rep_6_data;gest_39_rep_6_data;gest_40_rep_6_data;gest_41_rep_6_data;gest_42_rep_6_data;gest_43_rep_6_data;
    gest_44_rep_6_data;gest_45_rep_6_data;gest_46_rep_6_data;gest_47_rep_6_data;gest_48_rep_6_data;gest_49_rep_6_data];
 
session_1 = [double(session_1_data) double(session_1_lbl)];
session_2 = [double(session_2_data) double(session_2_lbl)];
session_3 = [double(session_3_data) double(session_3_lbl)];
session_4 = [double(session_4_data) double(session_4_lbl)];
session_5 = [double(session_5_data) double(session_5_lbl)];
session_6 = [double(session_6_data) double(session_6_lbl)];  

clear session_1_data session_1_lbl session_2_data session_2_lbl session_3_data session_3_lbl session_4_data session_4_lbl session_5_data session_5_lbl session_6_data session_6_lbl

clear gest_1_rep_1_lbl gest_2_rep_1_lbl gest_3_rep_1_lbl gest_4_rep_1_lbl gest_5_rep_1_lbl gest_6_rep_1_lbl gest_7_rep_1_lbl gest_8_rep_1_lbl gest_9_rep_1_lbl gest_10_rep_1_lbl
clear gest_11_rep_1_lbl gest_12_rep_1_lbl gest_13_rep_1_lbl gest_14_rep_1_lbl gest_15_rep_1_lbl gest_16_rep_1_lbl gest_17_rep_1_lbl gest_18_rep_1_lbl gest_19_rep_1_lbl gest_20_rep_1_lbl gest_21_rep_1_lbl;
clear gest_22_rep_1_lbl gest_23_rep_1_lbl gest_24_rep_1_lbl gest_25_rep_1_lbl gest_26_rep_1_lbl gest_27_rep_1_lbl gest_28_rep_1_lbl gest_29_rep_1_lbl gest_30_rep_1_lbl gest_31_rep_1_lbl gest_32_rep_1_lbl;
clear gest_33_rep_1_lbl gest_34_rep_1_lbl gest_35_rep_1_lbl gest_36_rep_1_lbl gest_37_rep_1_lbl gest_38_rep_1_lbl gest_39_rep_1_lbl gest_40_rep_1_lbl gest_41_rep_1_lbl gest_42_rep_1_lbl gest_43_rep_1_lbl;
clear gest_44_rep_1_lbl gest_45_rep_1_lbl gest_46_rep_1_lbl gest_47_rep_1_lbl gest_48_rep_1_lbl gest_49_rep_1_lbl

clear gest_1_rep_1_data  gest_2_rep_1_data  gest_3_rep_1_data  gest_4_rep_1_data gest_5_rep_1_data gest_6_rep_1_data gest_7_rep_1_data gest_8_rep_1_data gest_9_rep_1_data gest_10_rep_1_data
clear gest_11_rep_1_data gest_12_rep_1_data gest_13_rep_1_data gest_14_rep_1_data gest_15_rep_1_data gest_16_rep_1_data gest_17_rep_1_data gest_18_rep_1_data gest_19_rep_1_data gest_20_rep_1_data gest_21_rep_1_data;
clear gest_22_rep_1_data gest_23_rep_1_data gest_24_rep_1_data gest_25_rep_1_data gest_26_rep_1_data gest_27_rep_1_data gest_28_rep_1_data gest_29_rep_1_data gest_30_rep_1_data gest_31_rep_1_data gest_32_rep_1_data;
clear    gest_33_rep_1_data gest_34_rep_1_data gest_35_rep_1_data gest_36_rep_1_data gest_37_rep_1_data gest_38_rep_1_data gest_39_rep_1_data gest_40_rep_1_data gest_41_rep_1_data gest_42_rep_1_data gest_43_rep_1_data;
clear    gest_44_rep_1_data gest_45_rep_1_data gest_46_rep_1_data gest_47_rep_1_data gest_48_rep_1_data gest_49_rep_1_data

clear    gest_1_rep_2_lbl  gest_2_rep_2_lbl  gest_3_rep_2_lbl  gest_4_rep_2_lbl gest_5_rep_2_lbl gest_6_rep_2_lbl gest_7_rep_2_lbl gest_8_rep_2_lbl gest_9_rep_2_lbl gest_10_rep_2_lbl;
clear    gest_11_rep_2_lbl gest_12_rep_2_lbl gest_13_rep_2_lbl gest_14_rep_2_lbl gest_15_rep_2_lbl gest_16_rep_2_lbl gest_17_rep_2_lbl gest_18_rep_2_lbl gest_19_rep_2_lbl gest_20_rep_2_lbl gest_21_rep_2_lbl;
clear    gest_22_rep_2_lbl gest_23_rep_2_lbl gest_24_rep_2_lbl gest_25_rep_2_lbl gest_26_rep_2_lbl gest_27_rep_2_lbl gest_28_rep_2_lbl gest_29_rep_2_lbl gest_30_rep_2_lbl gest_31_rep_2_lbl gest_32_rep_2_lbl;
clear    gest_33_rep_2_lbl gest_34_rep_2_lbl gest_35_rep_2_lbl gest_36_rep_2_lbl gest_37_rep_2_lbl gest_38_rep_2_lbl gest_39_rep_2_lbl gest_40_rep_2_lbl gest_41_rep_2_lbl gest_42_rep_2_lbl gest_43_rep_2_lbl;
clear    gest_44_rep_2_lbl gest_45_rep_2_lbl gest_46_rep_2_lbl gest_47_rep_2_lbl gest_48_rep_2_lbl gest_49_rep_2_lbl

clear    gest_1_rep_2_data  gest_2_rep_2_data  gest_3_rep_2_data  gest_4_rep_2_data gest_5_rep_2_data gest_6_rep_2_data gest_7_rep_2_data gest_8_rep_2_data gest_9_rep_2_data gest_10_rep_2_data
clear    gest_11_rep_2_data gest_12_rep_2_data gest_13_rep_2_data gest_14_rep_2_data gest_15_rep_2_data gest_16_rep_2_data gest_17_rep_2_data gest_18_rep_2_data gest_19_rep_2_data gest_20_rep_2_data gest_21_rep_2_data;
clear    gest_22_rep_2_data gest_23_rep_2_data gest_24_rep_2_data gest_25_rep_2_data gest_26_rep_2_data gest_27_rep_2_data gest_28_rep_2_data gest_29_rep_2_data gest_30_rep_2_data gest_31_rep_2_data gest_32_rep_2_data;
clear    gest_33_rep_2_data gest_34_rep_2_data gest_35_rep_2_data gest_36_rep_2_data gest_37_rep_2_data gest_38_rep_2_data gest_39_rep_2_data gest_40_rep_2_data gest_41_rep_2_data gest_42_rep_2_data gest_43_rep_2_data;
clear    gest_44_rep_2_data gest_45_rep_2_data gest_46_rep_2_data gest_47_rep_2_data gest_48_rep_2_data gest_49_rep_2_data 

clear    gest_1_rep_3_lbl gest_2_rep_3_lbl  gest_3_rep_3_lbl  gest_4_rep_3_lbl gest_5_rep_3_lbl gest_6_rep_3_lbl gest_7_rep_3_lbl gest_8_rep_3_lbl gest_9_rep_3_lbl gest_10_rep_3_lbl;
clear    gest_11_rep_3_lbl gest_12_rep_3_lbl gest_13_rep_3_lbl gest_14_rep_3_lbl gest_15_rep_3_lbl gest_16_rep_3_lbl gest_17_rep_3_lbl gest_18_rep_3_lbl gest_19_rep_3_lbl gest_20_rep_3_lbl gest_21_rep_3_lbl;
clear    gest_22_rep_3_lbl gest_23_rep_3_lbl gest_24_rep_3_lbl gest_25_rep_3_lbl gest_26_rep_3_lbl gest_27_rep_3_lbl gest_28_rep_3_lbl gest_29_rep_3_lbl gest_30_rep_3_lbl gest_31_rep_3_lbl gest_32_rep_3_lbl;
clear    gest_33_rep_3_lbl gest_34_rep_3_lbl gest_35_rep_3_lbl gest_36_rep_3_lbl gest_37_rep_3_lbl gest_38_rep_3_lbl gest_39_rep_3_lbl gest_40_rep_3_lbl gest_41_rep_3_lbl gest_42_rep_3_lbl gest_43_rep_3_lbl;
clear    gest_44_rep_3_lbl gest_45_rep_3_lbl gest_46_rep_3_lbl gest_47_rep_3_lbl gest_48_rep_3_lbl gest_49_rep_3_lbl

clear    gest_1_rep_3_data  gest_2_rep_3_data  gest_3_rep_3_data  gest_4_rep_3_data gest_5_rep_3_data gest_6_rep_3_data gest_7_rep_3_data gest_8_rep_3_data gest_9_rep_3_data gest_10_rep_3_data;
clear    gest_11_rep_3_data gest_12_rep_3_data gest_13_rep_3_data gest_14_rep_3_data gest_15_rep_3_data gest_16_rep_3_data gest_17_rep_3_data gest_18_rep_3_data gest_19_rep_3_data gest_20_rep_3_data gest_21_rep_3_data;
clear    gest_22_rep_3_data gest_23_rep_3_data gest_24_rep_3_data gest_25_rep_3_data gest_26_rep_3_data gest_27_rep_3_data gest_28_rep_3_data gest_29_rep_3_data gest_30_rep_3_data gest_31_rep_3_data gest_32_rep_3_data;
clear    gest_33_rep_3_data gest_34_rep_3_data gest_35_rep_3_data gest_36_rep_3_data gest_37_rep_3_data gest_38_rep_3_data gest_39_rep_3_data gest_40_rep_3_data gest_41_rep_3_data gest_42_rep_3_data gest_43_rep_3_data;
clear    gest_44_rep_3_data gest_45_rep_3_data gest_46_rep_3_data gest_47_rep_3_data gest_48_rep_3_data gest_49_rep_3_data

clear    gest_1_rep_4_lbl  gest_2_rep_4_lbl  gest_3_rep_4_lbl  gest_4_rep_4_lbl gest_5_rep_4_lbl gest_6_rep_4_lbl gest_7_rep_4_lbl gest_8_rep_4_lbl gest_9_rep_4_lbl gest_10_rep_4_lbl 
clear    gest_11_rep_4_lbl gest_12_rep_4_lbl gest_13_rep_4_lbl gest_14_rep_4_lbl gest_15_rep_4_lbl gest_16_rep_4_lbl gest_17_rep_4_lbl gest_18_rep_4_lbl gest_19_rep_4_lbl gest_20_rep_4_lbl gest_21_rep_4_lbl;
clear    gest_22_rep_4_lbl gest_23_rep_4_lbl gest_24_rep_4_lbl gest_25_rep_4_lbl gest_26_rep_4_lbl gest_27_rep_4_lbl gest_28_rep_4_lbl gest_29_rep_4_lbl gest_30_rep_4_lbl gest_31_rep_4_lbl gest_32_rep_4_lbl;
clear    gest_33_rep_4_lbl gest_34_rep_4_lbl gest_35_rep_4_lbl gest_36_rep_4_lbl gest_37_rep_4_lbl gest_38_rep_4_lbl gest_39_rep_4_lbl gest_40_rep_4_lbl gest_41_rep_4_lbl gest_42_rep_4_lbl gest_43_rep_4_lbl;
clear    gest_44_rep_4_lbl gest_45_rep_4_lbl gest_46_rep_4_lbl gest_47_rep_4_lbl gest_48_rep_4_lbl gest_49_rep_4_lbl

clear    gest_1_rep_4_data gest_2_rep_4_data gest_3_rep_4_data gest_4_rep_4_data gest_5_rep_4_data gest_6_rep_4_data gest_7_rep_4_data gest_8_rep_4_data gest_9_rep_4_data gest_10_rep_4_data;
clear    gest_11_rep_4_data gest_12_rep_4_data gest_13_rep_4_data gest_14_rep_4_data gest_15_rep_4_data gest_16_rep_4_data gest_17_rep_4_data gest_18_rep_4_data gest_19_rep_4_data gest_20_rep_4_data gest_21_rep_4_data;
clear    gest_22_rep_4_data gest_23_rep_4_data gest_24_rep_4_data gest_25_rep_4_data gest_26_rep_4_data gest_27_rep_4_data gest_28_rep_4_data gest_29_rep_4_data gest_30_rep_4_data gest_31_rep_4_data gest_32_rep_4_data;
clear    gest_33_rep_4_data gest_34_rep_4_data gest_35_rep_4_data gest_36_rep_4_data gest_37_rep_4_data gest_38_rep_4_data gest_39_rep_4_data gest_40_rep_4_data gest_41_rep_4_data gest_42_rep_4_data gest_43_rep_4_data;
clear    gest_44_rep_4_data gest_45_rep_4_data gest_46_rep_4_data gest_47_rep_4_data gest_48_rep_4_data gest_49_rep_4_data

clear    gest_1_rep_5_lbl  gest_2_rep_5_lbl  gest_3_rep_5_lbl  gest_4_rep_5_lbl gest_5_rep_5_lbl gest_6_rep_5_lbl gest_7_rep_5_lbl gest_8_rep_5_lbl gest_9_rep_5_lbl gest_10_rep_5_lbl;
clear    gest_11_rep_5_lbl gest_12_rep_5_lbl gest_13_rep_5_lbl gest_14_rep_5_lbl gest_15_rep_5_lbl gest_16_rep_5_lbl gest_17_rep_5_lbl gest_18_rep_5_lbl gest_19_rep_5_lbl gest_20_rep_5_lbl gest_21_rep_5_lbl;
clear    gest_22_rep_5_lbl gest_23_rep_5_lbl gest_24_rep_5_lbl gest_25_rep_5_lbl gest_26_rep_5_lbl gest_27_rep_5_lbl gest_28_rep_5_lbl gest_29_rep_5_lbl gest_30_rep_5_lbl gest_31_rep_5_lbl gest_32_rep_5_lbl;
clear    gest_33_rep_5_lbl gest_34_rep_5_lbl gest_35_rep_5_lbl gest_36_rep_5_lbl gest_37_rep_5_lbl gest_38_rep_5_lbl gest_39_rep_5_lbl gest_40_rep_5_lbl gest_41_rep_5_lbl gest_42_rep_5_lbl gest_43_rep_5_lbl;
clear    gest_44_rep_5_lbl gest_45_rep_5_lbl gest_46_rep_5_lbl gest_47_rep_5_lbl gest_48_rep_5_lbl gest_49_rep_5_lbl

clear    gest_1_rep_5_data  gest_2_rep_5_data  gest_3_rep_5_data gest_4_rep_5_data gest_5_rep_5_data gest_6_rep_5_data gest_7_rep_5_data gest_8_rep_5_data gest_9_rep_5_data gest_10_rep_5_data
clear    gest_11_rep_5_data gest_12_rep_5_data gest_13_rep_5_data gest_14_rep_5_data gest_15_rep_5_data gest_16_rep_5_data gest_17_rep_5_data gest_18_rep_5_data gest_19_rep_5_data gest_20_rep_5_data gest_21_rep_5_data;
clear    gest_22_rep_5_data gest_23_rep_5_data gest_24_rep_5_data gest_25_rep_5_data gest_26_rep_5_data gest_27_rep_5_data gest_28_rep_5_data gest_29_rep_5_data gest_30_rep_5_data gest_31_rep_5_data gest_32_rep_5_data;
clear    gest_33_rep_5_data gest_34_rep_5_data gest_35_rep_5_data gest_36_rep_5_data gest_37_rep_5_data gest_38_rep_5_data gest_39_rep_5_data gest_40_rep_5_data gest_41_rep_5_data gest_42_rep_5_data gest_43_rep_5_data;
clear    gest_44_rep_5_data gest_45_rep_5_data gest_46_rep_5_data gest_47_rep_5_data gest_48_rep_5_data gest_49_rep_5_data 
clear    data labels

clear    gest_1_rep_6_lbl  gest_2_rep_6_lbl  gest_3_rep_6_lbl gest_4_rep_6_lbl gest_5_rep_6_lbl gest_6_rep_6_lbl gest_7_rep_6_lbl gest_8_rep_6_lbl gest_9_rep_6_lbl gest_10_rep_6_lbl;
clear    gest_11_rep_6_lbl gest_12_rep_6_lbl gest_13_rep_6_lbl gest_14_rep_6_lbl gest_15_rep_6_lbl gest_16_rep_6_lbl gest_17_rep_6_lbl gest_18_rep_6_lbl gest_19_rep_6_lbl gest_20_rep_6_lbl gest_21_rep_6_lbl;
clear    gest_22_rep_6_lbl gest_23_rep_6_lbl gest_24_rep_6_lbl gest_25_rep_6_lbl gest_26_rep_6_lbl gest_27_rep_6_lbl gest_28_rep_6_lbl gest_29_rep_6_lbl gest_30_rep_6_lbl gest_31_rep_6_lbl gest_32_rep_6_lbl;
clear    gest_33_rep_6_lbl gest_34_rep_6_lbl gest_35_rep_6_lbl gest_36_rep_6_lbl gest_37_rep_6_lbl gest_38_rep_6_lbl gest_39_rep_6_lbl gest_40_rep_6_lbl gest_41_rep_6_lbl gest_42_rep_6_lbl gest_43_rep_6_lbl;
clear    gest_44_rep_6_lbl gest_45_rep_6_lbl gest_46_rep_6_lbl gest_47_rep_6_lbl gest_48_rep_6_lbl gest_49_rep_6_lbl

clear    gest_1_rep_6_data  gest_2_rep_6_data  gest_3_rep_6_data gest_4_rep_6_data gest_5_rep_6_data gest_6_rep_6_data gest_7_rep_6_data gest_8_rep_6_data gest_9_rep_6_data gest_10_rep_6_data;
clear    gest_11_rep_6_data gest_12_rep_6_data gest_13_rep_6_data gest_14_rep_6_data gest_15_rep_6_data gest_16_rep_6_data gest_17_rep_6_data gest_18_rep_6_data gest_19_rep_6_data gest_20_rep_6_data gest_21_rep_6_data;
clear    gest_22_rep_6_data gest_23_rep_6_data gest_24_rep_6_data gest_25_rep_6_data gest_26_rep_6_data gest_27_rep_6_data gest_28_rep_6_data gest_29_rep_6_data gest_30_rep_6_data gest_31_rep_6_data gest_32_rep_6_data;
clear    gest_33_rep_6_data gest_34_rep_6_data gest_35_rep_6_data gest_36_rep_6_data gest_37_rep_6_data gest_38_rep_6_data gest_39_rep_6_data gest_40_rep_6_data gest_41_rep_6_data gest_42_rep_6_data gest_43_rep_6_data;
clear    gest_44_rep_6_data gest_45_rep_6_data gest_46_rep_6_data gest_47_rep_6_data gest_48_rep_6_data gest_49_rep_6_data

end
