function u = control_i(t)
%CONTROL_I- a function that allows to pass any Matlab function to a
%differential equation defined in th function dynamics;
% global signal_name;
% u = feval(signal_name, t); 

global signal_name u

u = feval(signal_name, t); 




end 