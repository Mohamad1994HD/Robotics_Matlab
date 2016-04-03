function sphere = Tsph(z_angle, y_angle, r)
    if nargin < 3
        error('Input must be in form z_angle, y_angle, r');
    else
        sphere = trotz(z_angle) * troty(y_angle) * transl(0,0,r);
    end 
        
end
    