clc;
close all;
clear all;

Ra=1;
La=2;
j=100e-3;
ka=0.3;
kf= 0.0008;
Ua=30;


StepSize = 1/1000;

result = sim("PMSM_SIMULINK.slx", [0 0.75]);

fig1 = figure();
plot(result.ScopeData.time, result.ScopeData.signals.values);

xlabel('time, t(s)');
ylabel('i , w');
grid on;
saveas(fig1, 'Fig1.jpg');

fig2 = figure();
plot(result.Tl.time, result.Tl.signals.values);

xlabel('time, t(s)');
ylabel('Load Torque');
grid on;
saveas(fig2, 'Fig2.jpg');
