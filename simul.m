function [t, x] = simul(As, Bs, tks, control_signal_name)
% a function, which solves numerically differential equations defined in
% the function dynamics. This function uses global variables A, B, tf,
% signal_name, to which the values As, Bs, tks, control_signal_name are
% assigned(the index s comes from the word special). The parameters
% (As, Bs) denote the selected system (Ai, Bi), tks denotes the upper limit
% of integration of differential equations, control_signal_name is a name
% of an input function, e.g 'u_tryg'( it can be by a name of any MATLAB 
% function mapping R w R). The initial state is zero 

global A B signal_name tspan iniCon 







A = As; 
B = Bs; 
signal_name = control_signal_name; 



tspan = [0 tks]; 



[t,x] = ode45(@dynamics, tspan, iniCon);



figure

plot(t,x(:,1),'-*',t,x(:,2),'-*', t, x(:,3), '-*'); 


figure 
plot3(x(:,1), x(:,2), x(:,3)); 










end 