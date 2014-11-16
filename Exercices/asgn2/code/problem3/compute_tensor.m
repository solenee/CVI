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

dx2   = ;
dy2   = ;
dxdy  = ;


