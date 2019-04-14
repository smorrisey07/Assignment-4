function [a0, a1, a2, b0, b1, b2] = genVar(freqvalue, qvalue, gain, samplerateinHz)

A = 10*(gain/40);
alpha = sin(freqvalue)/(2*qvalue);
omega = 2 * pi * freqvalue / samplerateinHz;

% Define coefficients
a0 = 1 + alpha/A;
a1 = -2*cos(omega);
a2 = 1 - alpha/A;
b0 = 1 + alpha * A;
b1 = -2 * cos(omega);
b2 = 1 - alpha * A;


end