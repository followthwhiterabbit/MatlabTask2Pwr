function  plot_h(A,B)
    % a function, which generates a graph of the function hautus over
    % a certain area of a complex plane that includes all the eigenvalues of
    % the matrix A. The values of the function hautus(A, B, lambda) in lambda =
    % lambda* are indicated by a special character, e.g a star. 
    %
    %
    
    
    
    % the  hautus matrix is rank deficient at the points that make the
    % det(A-lambda*I) = 0 so 
    % 1 -  rank(A-lambdaI) = n except for the eigenvalues of A
    % 2 - B needs to have some component in each eigenvlaue direction 
    % if lambda is not an eigenvalue of A, the matrix A - LAMBDAI is alone
    % rank n (we only need to test at eigenvalues)
    
    
    
    global eigen_values vec val r 
    
    
    
    
    %first we need to find the eigenvalues of matrix A and draw them on the
    %complex plane 
    
    [vec, val] = eig(A);
    



    figure()
    

    
    [x, y] = meshgrid(-1:0.1:1); % generating x and y data 
    z = zeros(size(x,1));

    
       
   

    title('Graph of the funcion hautus'); 
    xlabel ('real(x)');
    ylabel ('imaginary(x)');
    zlabel ('rank'); 
    

hold on 
plot3(real(val(2,2)), imag(val(2,2)), hautus(A,B, val(2,2)), '*'); 

hold on 
plot3(real(val(1,1)), imag(val(1,1)), hautus(A,B, val(1,1)), '*'); 

hold on 
plot3(real(val(3,3)), imag(val(3,3)), hautus(A,B, val(3,3)), '*'); 

    
    end 