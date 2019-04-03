% noise generation from assignment 3
% needs word length defined
w = 4;
d = 1/(2^(w-1)); 
R = [-d/2 d/2];     
n = rand(44100,1) .* range(R) + min(R); 
% n for noise

% Question 3
noiseMyFilter = mySinglePole(n, 0.99);
noiseMLFilter = filter(0.01, [1, -0.99], n);
% find difference and plot

figure(1)
subplot(2, 1, 1)
plot(noiseMyFilter)
subplot(2, 1, 2)
plot(noiseMLFilter)

% Question 4
% [a, fs] = audioread("cathy_2.wav");
% which filter is better?
% Filter for alpha = 0.5, 0.9, 0.99, 0.999

% Question 6
% freqz((1-alpha), [1  -alpha],1024,44100)
% plot magnitude and phase for alpha = 0.9, 0.99 to determine cutoff

