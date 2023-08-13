function Hd = chebfilt(N)

Fs = 2000;  % Sampling Frequency

Fc1 = 20;   % First Passband Frequency
Fc2 = 500;  % Second Passband Frequency
Apass  = 1;    % Passband Ripple (dB)

h  = fdesign.bandpass('N,Fp1,Fp2,Ap', N, Fc1, Fc2, Apass, Fs);
Hd = design(h, 'cheby1');
% fvtool(Hd, 'Fs', Fs);
end
