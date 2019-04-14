function outputvector = myPeak(inputvector, freqvalue, qvalue, gain, samplerateinHz)

[a0, a1, a2, b0, b1, b2] = genVar(freqvalue, qvalue, gain, samplerateinHz);

outputvector = filter([b0, b1,b2], [a0, a1, a2], inputvector);

end