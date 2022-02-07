function [J] = Cost_Fun(X, y, theta)
 m = length(y);   
 X = [ones(m,1),X];
 J = 1/(2*m) * (X*theta - y)' * (X*theta - y);
end