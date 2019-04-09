function outputvector = myPeakFilter(inputvector, freqvalue, qvalue, gain, samplerateinHz)

A = 10*(gain/40);
alpha = sin(freqvalue)/(2*qvalue);
omega = 2 * pi * freqvalue / samplerateinHz;
x = inputvector;
outputvector = zeros(length(inputvector), 1);

% Define coefficients
coefa0 = 1 + alpha/A;
coefa1 = -2*cos(omega);
coefa2 = 1 - alpha/A;
coefb0 = 1 + alpha * A;
coefb1 = -2 * cos(omega);
coefb2 = 1 - alpha * A;

for i = 3:length(outputvector)
    outputvector(i) = (coefb0/coefa0) * x(i) + (coefb1 / coefa0) * x(i-1) + (coefb2 / coefa0) * x(i-2) - (coefa1 / coefa0) * outputvector(i-1) - (coefa2 / coefa0) * outputvector(i-2);
end  
end