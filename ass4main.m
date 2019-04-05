% noise generation from assignment 3
% needs word length defined
w = 8;
d = 1/(2^(w-1)); 
R = [-d/2 d/2];     
n = rand(44100,1) .* range(R) + min(R); 
% n for noise

% Question 3
noiseMyFilter = mySinglePole(n, 0.99);
noiseMLFilter = filter(0.01, [1, -0.99], n);

% Plot for Question 3
figure(1)
subplot(3, 1, 1)
plot(noiseMyFilter)
title("Filtered with mySinglePole")
subplot(3, 1, 2)
plot(noiseMLFilter)
title("Filtered with Matlab Filter")
subplot(3,1,3)
plot(noiseMLFilter - noiseMyFilter)
title("Difference between the filters")

% Question 4
% missing audio file
[a, fs] = audioread("cathy_2.wav");
cathy05 = mySinglePole(a, 0.5);
cathy09 = mySinglePole(a, 0.9);
cathy099 = mySinglePole(a, 0.99);
cathy0999 = mySinglePole(a, 0.999);

% Plotting question 4
figure(2)
subplot(4,1,1)
plot(cathy05)
title("Alpha = 0.5")
subplot(4,1,2)
plot(cathy09)
title("Alpha = 0.9")
subplot(4,1,3)
plot(cathy099)
title("Alpha = 0.99")
subplot(4,1,4)
plot(cathy0999)
title("Alpha = 0.999")

% Question 6
[h1, f1] = freqz((1 - 0.9), [1 -0.9], 1024, 44100);
[h2, f2] = freqz((1 - 0.99), [1 -0.99], 1024, 44100);
figure(3)
subplot(2,2,1)
plot(f1,10*log10(abs(h1)))
xlabel("Frequency (log10)")
ylabel("Magnitude dB")
title("Magnitude spectrum for alpha=0.9")
subplot(2,2,2)
title("Phase Spectrum for alpha=0.9")
subplot(2,2,3)
plot(f2,10*log10(abs(h2)))
xlabel("Frequency (log10)")
ylabel("Magnitude dB")
title("Magnitude spectrum for alpha=0.99")
subplot(2,2,4)
title("Phase Spectrum for alpha=0.99")

