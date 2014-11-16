function Rx = get_rotation_x(theta_x)
%% creates a 4x4 matrix for rotating a point angle degrees around the x-axis
%
    Rx = [];

%   YOUR CODE GOES HERE
    angleRad = (pi*theta_x)/180;
    Rx = [1, 0, 0, 0;
          0, cos(theta_x), -sin(theta_x), 0;
          0, sin(theta_x), cos(theta_x), 0;
          0, 0, 0, 1];
    
end
    
