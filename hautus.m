function r = hautus(A, B, lambda)
% a function, which computes the rank r of the matrix [lambda*I - A     B],
% lambda is a set of complex variables 

% use --> eye, size, rank 

global  r hautus_matrix rank_control




hautus_matrix  = [lambda*eye(3) - A  B];



rank_control = eig(A);


if (lambda == rank_control(1)) |  (lambda == rank_control(2)) |  (lambda == rank_control(3) )
    r  = 0; 
    disp('rank deficient'); 
else 
    r = rank(lambda*eye(3) - A); 
end 





   
%if lambda == rank_control(1) || lambda == rank_control(2) || lambda == rank_control(3) 
   %  r = 0;
%else   
 %   r = rank(lambda*eye(3) - A);
%end 




 
end 