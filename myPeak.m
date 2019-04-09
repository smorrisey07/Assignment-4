function outputvector = myPeak(inputvector, freqvalue, qvalue, gain, samplerateinHz)
A = 10*(gain/40);
alpha = sin(freqvalue)/(2*qvalue);
omega = 2 * pi * freqvalue / samplerateinHz;
z = A * (cos(omega) + j * sin(omega));

% Define coefficients
coefa0 = 1;
coefa1 = -2*cos(omega);
coefa2 = 1 - alpha/A;
coefb0 = 1 + alpha * A;
coefb1 = -2 * cos(omega);
coefb2 = 1 - alpha * A;

disp('done coefficients')
outputvector = filter(num, [1 -den], inputvector);
disp('done filter')
end