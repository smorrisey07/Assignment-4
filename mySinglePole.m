function outputvector = mySinglePole(inputvector, alpha)
x = inputvector;
y = zeros(length(x), 1);

for i = 2: length(x)
    y(i) = ((1 - alpha) * x(i)) + (alpha * y(i-1));
end

outputvector = y;
end