function display_points_2d(points)
%% displays 2D points in a new figure

%    YOUR CODE GOES HERE
    x = points.x(1,:);
    y = points.x(2,:);
    plot(x, y, '.');
end
