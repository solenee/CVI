function [dx, dy] = create_filters()
%% creates 3x3 derivative filters in x and y direction
        
    dx = [];
    dy = [];
    
%   YOUR CODE GOES HERE
    % Sobel filters as in the course
    dx = (1/8)*[1, 0, -1;
        2, 0, -2;
        1, 0, -1];
    dy = (1/8)*[1, 2, 1;
        0, 0, 0;
        -1, -2, -1];
end