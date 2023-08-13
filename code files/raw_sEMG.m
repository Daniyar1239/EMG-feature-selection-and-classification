figure; 
axes1 = axes('Parent',figure,...
    'Position',[0.0513541666666667 0.406340057636888 0.5246875 0.538904899135445]);
hold(axes1,'on');
plot(s1_data(:,1))
xlim([0 2e6]);
xlabel('Time, (s)');
ylabel('Voltage, (V)');
grid on
set(axes1,'FontSize',17);