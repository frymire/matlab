function L = randomOrthogonalBasis(d)

    L = rand(d, d);
    
    % Perform Gramm-Schmidt orthonormalization over the row vectors.
    for i = 1:d
        
        % Get the current basis vector
        l = L(i,:);
        v = l;
        
        % Subtract components already generated
        for j = 1:(i-1)
            v = v - (l*L(j,:)')*L(j,:);
        end
        
        % Renormalize
        L(i,:) = v/sqrt(v*v');
        
    end
    
    L;
end