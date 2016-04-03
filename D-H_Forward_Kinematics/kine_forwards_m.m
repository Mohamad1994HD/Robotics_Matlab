% By Mohamad Alhaddad
% This function will obtain forward kinemtics for a given Denevit Hartenberg (D-H) parameters matrix
% Implementation using matrix multiplication

function posi = kine_forwards_m(Matrix)
    if nargin ~= 1
        error('Input Error, Please input as nx4 matrix')
    end
    
    A = eye(4,4);
    num_rows=size(Matrix,1)
    for row=1:num_rows
        theta = Matrix(row,1);
        d = Matrix(row,2);
        a = Matrix(row,3);
        alpha = Matrix(row,4);
        A=A*obtain_transform(theta,d,a,alpha);
    end
    posi=A
end

function tr = obtain_transform(t,d,a,al)
    tr = trotz(t)*transl(0,0,d)*transl(a,0,0)*trotx(al);
end
