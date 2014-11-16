function Rz = get_rotation_z(theta_z)
%% creates a 4x4 matrix for rotating a point angle degrees around the z-axis
%
    Rz = [];

%   YOUR CODE GOES HERE
    angleRad = (pi*theta_z)/180;
    Rz = [cos(theta_z), -sin(theta_z), 0, 0;
          sin(theta_z), cos(theta_z), 0, 0;
          0, 0, 1, 0;
          0, 0, 0, 1];
    
end
    
