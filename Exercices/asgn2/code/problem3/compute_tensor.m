function [dx2,dy2,dxdy] = compute_tensor(img,sigma,fsize)
%{
 Calculate the structure tensor for the Harris detector. Use the replicate
 option at the boundary for filtering.

 Inputs:
   img     grayscale image
   sigma   sigma for gaussian filter
   fsize   window size for filter

 Outputs:
   dx2      dx*dx
   dy2      dy*dy
   dxdy     dx*dy
%}

% 1. At first, smooth the grayscale image
imgSmooth = imfilter(img, fspecial('gaussian', fsize, sigma), 'replicate'); 

% 2. Compute derivatives

%% central difference : dx ~ 0.5*[1 0 -1]
dx = imfilter(img, 0.5*[1 0 -1], 'replicate') ; 
%% central difference : dy ~ 0.5*[1; 0; -1]
dy = imfilter(img, 0.5*[1; 0; -1], 'replicate');

dx2   = dx.*dx; 
dy2   = dy.*dy; 
dxdy  = dx.*dy; 

%% 3. Smooth with Gaussian filter
gFilter = fspecial('gaussian', fsize, 1.6*sigma);
dx2   = imfilter(dx2, gFilter, 'replicate');
dy2   = imfilter(dy2, gFilter, 'replicate');
dxdy  = imfilter(dxdy, gFilter, 'replicate');

