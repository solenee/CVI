function G = make_gaussianpyramid(im, nlevels, fsize, sigma)
%{
 Builds a Gaussian image pyramid.
 For filtering steps, apply symmetric boundary conditions and make sure
 that filtered images have the same size as corresponding inputs.

 Inputs:
   im        high resolution input image.
   nlevels   number of pyramid levels.
   fsize     gaussian filter dimensions.
   sigma     gaussian filter standard deviation

 Outputs:
   G         cell array of images in decreasing order.
%}

G = ;

%format check
assert(iscell(G));
