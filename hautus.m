function r = hautus(A, B, lambda)
% a function, which computes the rank r of the matrix [lambda*I - A     B],
% lambda is a set of complex variables 

% use --> eye, size, rank 

global  r hautus_matrix 

hautus_matrix  = [lambda*eye(3) - A,B];
 
    r = rank(hautus_matrix);

end 
