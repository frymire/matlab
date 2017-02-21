function mdg = multiDGaussian(x, mu, sigma)

dim = size(x, 1);

mdg = ((2*pi)^(-dim/2)) * (det(sigma)^(-1/2)) * exp( -0.5 * (x-mu)' * sigma^(-1) * (x-mu) );
