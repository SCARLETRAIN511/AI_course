function [X_norm] = FS(X)
mu = mean(X);
sigma = std(X);
X_norm = normalize(X);
end