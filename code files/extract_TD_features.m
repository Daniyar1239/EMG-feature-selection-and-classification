function feat = extract_TD_features(y, x,winsize,wininc, selidx)
% y - labels
% x - data
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone'
addpath 'C:\Users\daniyar.zhakyp\Documents\MATLAB\Capstone\feature functions\Time-Domain features'

feat = [];

thres = threshold_calculation(y, x, 0.5);
torder_3 = 3;  % Order for Temporal Moment feature
%torder_4 = 4;
%torder_5 = 5; 
vorder = 4; % Order for Vorder feature

% For feature selection
if any(ismember(selidx,1))
    rms_feat = RootMeanSquare(x, winsize, wininc);
    feat = vertcat(feat,rms_feat);
end

if any(ismember(selidx,2))
    mav_feat = MeanAbsoluteValue(x, winsize, wininc);
    feat = vertcat(feat, mav_feat);
end

if any(ismember(selidx,3))
    aac_feat = AverageAmplitudeChange(x,winsize,wininc);
    feat = vertcat(feat, aac_feat);
end

if any(ismember(selidx,4))
    avgen_feat = AverageEnergy(x, winsize, wininc);
    feat = vertcat(feat, avgen_feat);
end

if any(ismember(selidx,5))
    asm_feat = AbsoluteValueOfTheSummationOfExpRoot(x, winsize, wininc);
    feat = vertcat(feat, asm_feat);
end

if any(ismember(selidx,6))
    abss_feat = AbsoluteValueOfTheSummationOfSquareRoot(x, winsize, wininc);
    feat = vertcat(feat, abss_feat);
end

if any(ismember(selidx,7))
    card_feat = Cardinality(x, thres, winsize, wininc);
    feat = vertcat(feat, card_feat);
end

if any(ismember(selidx,8))
    cov_feat = CoefficientOfVariation(x, winsize, wininc);
    feat = vertcat(feat, cov_feat);
end

if any(ismember(selidx,9))
    damv_feat = DifferenceAbsoluteMeanValue(x, winsize, wininc);
    feat = vertcat(feat, damv_feat);
end

if any(ismember(selidx,10))
    dasdv_feat = DifferenceAbsoluteStandardDeviationValue(x, winsize, wininc);
    feat = vertcat(feat, dasdv_feat);
end

if any(ismember(selidx,11))
    dvarv_feat = DifferenceVarianceValue(x, winsize, wininc);
    feat = vertcat(feat, dvarv_feat);
end

if any(ismember(selidx,12))
    emav_feat = EnhancedMeanAbsoluteValue(x, winsize, wininc);
    feat = vertcat(feat, emav_feat);
end

if any(ismember(selidx,13))
    ewl_feat = EnhancedWaveformLength(x, winsize, wininc);
    feat = vertcat(feat, ewl_feat);
end

if any(ismember(selidx,14))
    iemg_feat= IntegratedEMG(x, winsize, wininc);
    feat = vertcat(feat, iemg_feat);
end

if any(ismember(selidx,15))
    iqr_feat = InterquartileRange(x, winsize, wininc);
    feat = vertcat(feat, iqr_feat);
end

if any(ismember(selidx,16))
    kurt_feat = Kurtosis(x, winsize, wininc);
    feat = vertcat(feat, kurt_feat);
end

if any(ismember(selidx,17))
    lcov_feat = LogCoefficientOfVariation(x, winsize, wininc);
    feat = vertcat(feat, lcov_feat);
end

if any(ismember(selidx,18))
    ld_feat = LogDetector(x, winsize, wininc);
    feat = vertcat(feat, ld_feat);
end

if any(ismember(selidx,19))
    ldamv_feat = LogDifferenceAbsoluteMeanValue(x, winsize, wininc);
    feat = vertcat(feat, ldamv_feat);
end

if any(ismember(selidx,20))
    ldasdv_feat = LogDifferenceAbsoluteStandardDeviationValue(x, winsize, wininc);
    feat = vertcat(feat, ldasdv_feat);
end

if any(ismember(selidx,21))
    mfl_feat = MaximumFractalLength(x, winsize, wininc);
    feat = vertcat(feat, mfl_feat);
end

if any(ismember(selidx,22))
    mad_feat = MeanAbsoluteDeviation(x, winsize, wininc);
    feat = vertcat(feat, mad_feat);
end

if any(ismember(selidx,23))
    mavs_feat = MeanAbsoluteValueSlope(x, winsize, wininc);
    feat = vertcat(feat, mavs_feat);
end

if any(ismember(selidx,24))
    msr_feat = MeanValueOfTheSquareRoot(x, winsize, wininc);
    feat = vertcat(feat, msr_feat);
end

if any(ismember(selidx,25))
    mmav1_feat = ModifiedMeanAbsoluteValue1(x, winsize, wininc);
    feat = vertcat(feat, mmav1_feat);
end

if any(ismember(selidx,26))
    mmav2_feat = ModifiedMeanAbsoluteValue2(x, winsize, wininc);
    feat = vertcat(feat, mmav2_feat);
end

if any(ismember(selidx,27))
    myop_feat = MyopulsePercentageRate(x, thres, winsize, wininc);
    feat = vertcat(feat, myop_feat);
end

if any(ismember(selidx,28))
    nzc_feat = NewZeroCrossing(x, winsize, wininc);
    feat = vertcat(feat, nzc_feat);
end

if any(ismember(selidx,29))
    ssi_feat = SimpleSqureIntegral(x, winsize, wininc);
    feat = vertcat(feat, ssi_feat);
end

if any(ismember(selidx,30))
    skew_feat = Skewness(x, winsize, wininc);
    feat = vertcat(feat, skew_feat);
end

%logrms_feat = LogRootMeanSquare(x, winsize, wininc);

if any(ismember(selidx,31))
    ssc_feat = SlopeSignChange(x, thres, winsize, wininc);
    feat = vertcat(feat, ssc_feat);
end

if any(ismember(selidx,32))
    std_feat = StandardDeviation(x, winsize, wininc);
    feat = vertcat(feat, std_feat);
end

if any(ismember(selidx,33))
    tkeo_feat = TeagerKaiserEnergyOperator(x, winsize, wininc);
    feat = vertcat(feat, tkeo_feat);
end

if any(ismember(selidx,34))
    tempmom3_feat = TemporalMoment(x, torder_3, winsize, wininc);
    feat = vertcat(feat, tempmom3_feat);
end

%tempmom4_feat = TemporalMoment(x, torder_4, winsize, wininc);
%tempmom5_feat = TemporalMoment(x, torder_5, winsize, wininc);

if any(ismember(selidx,35))
    var_feat = Variance(x, winsize, wininc);
    feat = vertcat(feat, var_feat);
end

if any(ismember(selidx,36))
    varemg_feat = VarianceofEMG(x, winsize, wininc);
    feat = vertcat(feat, varemg_feat);
end

if any(ismember(selidx,37))
    vorder_feat = VOrder(x, vorder, winsize, wininc);
    feat = vertcat(feat, vorder_feat);
end

if any(ismember(selidx,38))
    wl_feat = WaveformLength(x, winsize, wininc);
    feat = vertcat(feat, wl_feat);
end

if any(ismember(selidx,39))
    wamp_feat = WillisonAmplitude(x,thres, winsize, wininc);
    feat = vertcat(feat, wamp_feat);
end

if any(ismember(selidx,40))
    zc_feat = ZeroCrossing(x, thres, winsize, wininc);
    feat = vertcat(feat, zc_feat);
end

%feat = [card_feat; dasdv_feat; dvarv_feat; iqr_feat; kurt_feat;
%    ldasdv_feat; mfl_feat; msr_feat; mmav1_feat;
%    myop_feat; ssc_feat; vorder_feat; wamp_feat; zc_feat];


%Hudgins et al. feature set
%feat = [mav_feat; mavs_feat; zc_feat; ssc_feat; wl_feat];

%Atzori et al. feature set
%feat = [rms_feat; mav_feat; mavs_feat; zc_feat; ssc_feat; wl_feat];

%Phyniomark et al. feature set
%feat = [iemg_feat; mav_feat; mmav1_feat; mmav2_feat; ssi_feat; var_feat; rms_feat;
%   vorder_feat; ld_feat; wl_feat; aac_feat; dasdv_feat; tempmom3_feat; tempmom4_feat; tempmom5_feat];

%Oliveira de Souza et al. feature set:
%feat = [mav_feat; rms_feat; logrms_feat; wl_feat; var_feat; kurt_feat; skew_feat];

%feat = [rms_feat; mav_feat; aac_feat; avgen_feat; asm_feat; abss_feat; card_feat; cov_feat; damv_feat;
%    dasdv_feat; dvarv_feat; emav_feat; ewl_feat; iemg_feat; iqr_feat; kurt_feat; lcov_feat; 
%    ld_feat; ldamv_feat; ldasdv_feat; mfl_feat; mad_feat; mavs_feat; msr_feat; mmav1_feat;
%    mmav2_feat; myop_feat; nzc_feat; ssi_feat; skew_feat; ssc_feat; std_feat; tkeo_feat; tempmom3_feat;
%    var_feat; varemg_feat; vorder_feat; wl_feat; wamp_feat; zc_feat];

end
