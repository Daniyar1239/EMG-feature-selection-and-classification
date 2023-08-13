function FW_std_s = std_calc(FW_avg,FW)
[~,hist_idx] = max(FW_avg(41:44,1));
hist_idx = 40 + hist_idx;

[~,a4_idx] = max(FW_avg(45:48,1));
a4_idx = 44 + a4_idx;

[~,a5_idx] = max(FW_avg(49:53,1));
a5_idx = 48 + a5_idx;

[~,a6_idx] = max(FW_avg(54:59,1));
a6_idx = 53 + a6_idx;

FW_std = std(FW, 0, 2);

FW_std_s = FW_std(1:40);
FW_std_s(41,1) = FW_std(hist_idx);
FW_std_s(42,1) = FW_std(a4_idx);
FW_std_s(43,1) = FW_std(a5_idx);
FW_std_s(44,1) = FW_std(a6_idx);
end