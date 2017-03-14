% Graphs a Gaussian distribution over the specified range.
% The first two inputs are vectors that specify the mesh independently
% for the x- and y-axis, respectively.
%
% >> mu = [2 3]'
% >> sigma = eye(2,2)
% >> [X,Y,Z] = Gaussian2DGrid(1:0.1:5, 1:0.1:5, mu, sigma)
% >> surf(X,Y,Z)
%
% Calling without "[X,Y,Z] =" just returns the Z matrix.
%
function [varargout] = Gaussian2DGrid(xAxis, yAxis, mu, sigma)

[X, Y] = meshgrid(xAxis, yAxis);

rows = size(X, 1);
cols = size(X, 2);

Z = zeros(rows, cols);

for k = 1:rows*cols
    Z(k) = multiDGaussian([X(k) Y(k)]', mu, sigma); 
end

if (nargout == 1)
    varargout{1} = Z;
else
    varargout{1} = X;
    varargout{2} = Y;
    varargout{3} = Z;
end

end