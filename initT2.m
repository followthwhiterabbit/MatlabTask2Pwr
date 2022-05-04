
global  hautus_matrix ohm r eigen_values vec val  SS lambda 
global  signal_name u x xdot u tspan iniCon t rank_control 





u = 0; 

lambda = 0; 
A = zeros(3); 
B = zeros(3,1); 


iniCon = [0;0;0];

A1_2_3 = [0 0 -2; 1 0 -4; 0 1 -3]; 
B1 = [-2; 1; 1]; 
B2 = [2;3;1]; 
B3 = [2;2;1]; 
C1_2_3 = [ 0 0 1]; 

A4_5_6 = [0 1 0; 0 0 1; -1 -1 -1]; 
B4_5_6 = [0 0 1]; 
C4 = [2 -3 1]; 
C5 = [-2 -1 1]; 
C6 = [1 0 1]; 



