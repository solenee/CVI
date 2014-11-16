function L = make_laplacianpyramid(G, nlevels, fsize)
%{
 Builds a Laplacian image pyramid.

 Inputs:
   G         gaussian pyramid as cell array
   nlevels   number of pyramid levels.
   fsize     binomial filter dimensions

 Outputs:
   L         cell array of images in decreasing order.
%}


L = ;

% format check
assert(iscell(L));
