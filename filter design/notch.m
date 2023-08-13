function Hd = notch(N)

Fs = 2000;  % Sampling Frequency

Fc1 = 49;  % First Cutoff Frequency
Fc2 = 51;  % Second Cutoff Frequency
Astop = 90;

h  = fdesign.bandstop('N,F3dB1,F3dB2,Ast', N, Fc1, Fc2, Astop, Fs);
Hd = design(h, 'cheby2');
%fvtool(Hd, 'Fs', Fs);
end
