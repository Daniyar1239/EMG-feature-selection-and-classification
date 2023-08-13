function Hd = ellipfilt(N)

Fs = 2000;  % Sampling Frequency

Fc1 = 20;   % First Passband Frequency
Fc2 = 500;  % Second Passband Frequency
Apass  = 1;    % Passband Ripple (dB)
Astop  = 90;   % Stopband Attenuation (dB)

h  = fdesign.bandpass('N,Fp1,Fp2,Ast1,Ap,Ast2', N, Fc1, Fc2, ...
                      Astop, Apass, Astop, Fs);
Hd = design(h, 'ellip');
% fvtool(Hd, 'Fs', Fs);
end
