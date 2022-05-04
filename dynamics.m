function xdot = dynamics(t, x)
% DYNAMICS - a function, which represents a differential equation 
% xdot = Ax + Bu. 
% the equation parameters: A, B are global variables. The values of the
% input signal are defined by a matlab function
% control_i which is u(t) := control_i(t). 

global A B 



xdot =  A*x + B*control_i(t);



end 