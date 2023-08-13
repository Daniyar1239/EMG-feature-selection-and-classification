function [pxx, f] = powerfunc(x, Fs)

[pxx,f] = pwelch(x,[],[],[], Fs);
figure; 
axes1 = axes('Parent',figure,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
plot(f, 10*log10(pxx(:,1)))
xlabel('Frequency, (Hz)');
ylabel('PSD, (dB/Hz)');
grid on
set(axes1,'FontSize',17);
end