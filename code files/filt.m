function [filteredsig] = filt(x,bp_sos,bp_g, notch_sos, notch_g)

x = double(x);
filteredsig_1 = filtfilt(bp_sos,bp_g,x);
filteredsig_2 = filtfilt(notch_sos,notch_g,filteredsig_1);
filteredsig = detrend(filteredsig_2);

end