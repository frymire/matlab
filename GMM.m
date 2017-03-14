% Evaluates the specified Gaussian mixture model at x.
% For example...
%
% >> gmm1 = [ struct('mu', [2, 3]', 'sigma', eye(2,2)); struct('mu', [4, 3]', 'sigma', eye(2,2)) ]
% >> gmm(4.2, gmm1)
%
function gmm = GMM(x, components)

gmm = 0.0;

for c = 1:size(components, 1)
    gmm = gmm + multiDGaussian(x, components(c).mu, components(c).sigma);
end

end
