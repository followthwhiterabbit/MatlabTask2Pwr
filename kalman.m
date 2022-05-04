function ohm = kalman(A, B)
% basically takes two matrices, and returns the Kalman controllability
% matrix 

global ohm


ohm = [B  A*B  A*A*B];  

end 
