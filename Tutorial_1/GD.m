function [theta, J_hist] = GD(X, y, theta, alpha, N)
m = length(y);   
X = [ones(m,1),X];
J_hist = zeros(N,1);
for j = 1:N
   J = 1/(2*m) * (X*theta - y)'* (X*theta - y);
   %get the gradient
   G = 1/m *X'*(X*theta - y);
   %updating theta
   theta = theta - alpha * G;
   J_hist(j) = J;
end
end