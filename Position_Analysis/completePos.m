function matrix = completePos(m,var)
    if nargin == 2
        % obtain n,o,a
        n = m(:,1).' ;
        o = m(:,2).';
        a = m(:,3).';
        % 1) cross product nxo=a
        nxo = cross(n,o);
        eq123 = nxo==a;
        % 2) |n|=|o|=|a|=1
        eq4 = norm(n) == 1;
        eq5 = norm(o) == 1;
        eq6 = norm(a) == 1;
        % solve for the 6 equations obtained in 1,2
        [sol] = solve(eq123(1),eq123(2),eq123(3),eq4,eq5,eq6,var);
        % store solution in matrix
        M = subs(m,sol);
        % enhance the matrix
        M(abs(M(:)) < 0.001) = 0; 
        % return the value
        matrix = M
    else
        error('Input a matrix of 3x3 dimensions, and a vector of syms arguments');
    end
    
end

