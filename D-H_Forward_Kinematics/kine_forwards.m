function pos = kine_forwards(Matrix)
    if nargin ~= 1
        error('Input Error, Please input as nx4 matrix')
    end
    num_rows = size(Matrix,1);
    L(1)=Link([Matrix(1,1) Matrix(1,2) Matrix(1,3) Matrix(1,4)]);
    
    for row=2:num_rows
        L(row) = Link([Matrix(row,1) Matrix(row,2) Matrix(row,3) Matrix(row,4)]);
    end
    R=SerialLink(L); %Create a SerialLink
    pos = R.fkine(Matrix(:,1)) % forward kinematics
end