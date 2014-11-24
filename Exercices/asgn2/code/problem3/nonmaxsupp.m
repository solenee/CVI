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
sprintf('Number of interest points for the given threshold : %d', length(ipx))

% thinnen the results
px = []; py = [];
nbPoints = 0;
[rws, cls] = size(harris);
% for each window not sticking to the borders, ...
x = 6; %y = 6;
while ( (x < (rws - 5)) )
  y = 6;
  while ( (y < (cls - 5)) )

%% find the maximum
    window = harris(x:x+4, y:y+4);
    [value, indice] =  max(window(:));
    if (value > thresh)
%%% take it
	nbPoints = nbPoints + 1;
 	px(nbPoints) = x + mod(indice(1)-1, 5); %fix((indice(1)-1)/5)
	py(nbPoints) = y + fix((indice(1)-1)/5); %mod(indice(1)-1, 5)
%% else    
%%% skip it
    end
    y = y + 5;
  end
  x = x + 5;
end
sprintf('Number of interest points after non-maximum suppression : %d', nbPoints)

assert(length(px(:,1)) == length(py(:,1)) && length(px(1,:)) == length(py(1,:)), ...
    'px and py should have the same size.');


