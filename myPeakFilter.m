function outputvector = myPeakFilter(inputvector, freqvalue, qvalue, gain, samplerateinHz)
[a0, a1, a2, b0, b1, b2] = genVar(freqvalue, qvalue, gain, samplerateinHz);
outputvector = zeros(length(inputvector), 1);

for i = 3:length(outputvector)
    outputvector(i) = (b0/a0) * inputvector(i) + (b1 / a0) * inputvector(i-1) + (b2 / a0) * inputvector(i-2) - (a1 / a0) * outputvector(i-1) - (a2 / a0) * outputvector(i-2);
end  
end