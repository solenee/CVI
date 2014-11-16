function homogeneous_points = cart2hom(cartesian_points)
%% converts points from cartesian 3d coordinates to homogeneous coordinates

    homogeneous_points = [];
    
%   YOUR CODE GOES HERE
    n = size(cartesian_points);
    homogeneous_points = zeros(n+1, n+1);
    homogeneous_points(1:n, 1:n) = cartesian_points;
    homogeneous_points(n+1, n+1) = 1;
    
end
