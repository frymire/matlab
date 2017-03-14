% Graphs a 2-D GMM over the specified range.
% The first two inputs are vectors that specify the mesh independently
% for the x- and y-axis, respectively.
%
% >> gmm1 = [ struct('mu', [2, 3]', 'sigma', eye(2,2)); struct('mu', [4, 3]', 'sigma', eye(2,2)) ]
% >> [X,Y,Z] = GMM2DGrid(1:0.1:5, 1:0.1:5, gmm1)
% >> surf(X,Y,Z)
%
% Calling without "[X,Y,Z] =" just returns the Z matrix.
%
function [varargout] = GMM2DGrid(xAxis, yAxis, components)

[X, Y] = meshgrid(xAxis, yAxis);

rows = size(X, 1);
cols = size(X, 2);

Z = zeros(rows, cols);

for k = 1:rows*cols
    Z(k) = GMM([X(k) Y(k)]', components);
end

if (nargout == 1)
    varargout{1} = Z;
else
    varargout{1} = X;
    varargout{2} = Y;
    varargout{3} = Z;
end

end