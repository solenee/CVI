function edges = detect_edges(imgx, imgy, threshold)
%% computes the gradient magnitude from imgx and imgy (the derivatives of 
%  the  image in x and y direction and thresholds it.

    edges = [];
    
%   YOUR CODE GOES HERE
    % compute magnitude
    magnitude = sqrt( (imgx .* imgx) + (imgy .* imgy) );
    
    % detect edges
    edges = magnitude < threshold; % because imshow displays pixels with 
    % the value 0 (false) as black and pixels with the value 1 (true) 
    % as white and we want black edges
    
    % display magnitude (left) and edges (right)
    display_images(magnitude, edges);
end