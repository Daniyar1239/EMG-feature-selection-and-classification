function Hd = buttfilt(N)  % N - Filter order

Fs = 2000;  % Sampling Frequency

Fc1 = 20;   % First Cutoff Frequency
Fc2 = 500;  % Second Cutoff Frequency

h  = fdesign.bandpass('N,F3dB1,F3dB2', N, Fc1, Fc2, Fs);
Hd = design(h, 'butter');

%fvtool(Hd, 'Fs', Fs); % For magnitude response visualization
end 