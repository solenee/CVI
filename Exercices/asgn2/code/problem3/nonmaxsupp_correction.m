function [px,py] = nonmaxsupp(harris,thresh)
%{
 Apply non-maximum suppression on the result to extract the local maxima
 with a 5x5 window. Do not pad the image at the boundarys. Allow multiple
 equal maxima in one cell. Take points which are above the given threshold only.

 Inputs:
   harris   harris image
   thresh   threshold for non-maximum suppression

 Outputs:
   px      x-coordinates for obtained points
   py      y-coordinates for obtained points
%}

% increase image with boundary of -Inf
harris_bar = padarray(harris, [2 2], -realmax);

% divide image into 5x5 windows
windows = im2col(harris_bar, [5 5]);

% what is the maximum of each windows ?
maxima = max(windows);

% linear index of a window's center
c = sub2ind([5 5], 3, 3);

% is the center a maximum ?
ismax = reshape(maxima == windows(c,:), size(harris));

% mask and coordinates after thresholding
mask = (harris.*ismax) > thresh;
[py, px] = find(mask);
