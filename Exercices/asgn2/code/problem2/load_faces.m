function [data, facedim, nfaces] = load_faces(fdir)
%{
 Loads images from yale database.

 Inputs:
   fdir       Root directory containing the face images.

 Outputs:
   data       linearized and concatenated image data with size MxN,
              where M is is the number of pixels per face, and N
              is the number of face images
   facedim    2D face image dimensions [rows,cols]
   nfaces     number of all face images
%}

data = ;
facedim = ;
nfaces = ;

% format check
assert(isfloat(data) && 0 <= min(data(:)) && max(data(:)) <= 1);