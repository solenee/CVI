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

% select interest points
[ipx, ipy] = find(harris>thresh);
% TO DELETE
px = ipx; py= ipy;

% TODO thinnen the results
%{
r = 2;

nbPoints = 0;

px = [];
py = [];
for x=r+1:length(harris(1,:))
   for y=r+1:length(harris(:,1))
	window = harris(x-r:x+r, y-r:y+r);
	[max, maxId] = max(window);
	px = concat(1, maxId(1)-x+r, px);
   end
end
nbPoints
%}
assert(length(px(:,1)) == length(py(:,1)) && length(px(1,:)) == length(py(1,:)), ...
    'px and py should have the same size.');


