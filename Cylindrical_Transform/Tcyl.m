% By Mohamad Alhadddad
% This funciton will obtain the cylindrical transformation
%
function cyli = Tcyl(r, z_angle, l)
    if nargin < 3
        error('Input must be in form r (along x-axis), z_angle, l (along z-axis)');
    else
        cyli = transl(0,0,l)*trotz(z_angle) * transl(r,0,0);
    end 
        
end
