function T = get_translation(t)
%% creates a 4x4 translation matrix from point t (3x1 vector)
%
    T = [];

%   YOUR CODE GOES HERE
    T = eye(4);
    T(1:3, 4) = t;
    
end
    
