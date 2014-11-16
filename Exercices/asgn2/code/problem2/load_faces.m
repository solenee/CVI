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

files = dir(sprintf('%s//*.pgm',fdir))
%disp(sprintf('%s//*.pgm',fdir))
%disp(files);
%size(files)
nfaces = length(files(:,1))
%disp(files)
%% load images
img = [];
for (i=1:nfaces)
  img = [];
  disp(files(i).name)
  disp(sprintf('%s//%s',fdir, files(i).name))
  img = load_image(sprintf('%s//%s',fdir, files(i).name));
  data(:,i) = img(:);
end
facedim = size(img);


% format check
assert(isfloat(data) && 0 <= min(data(:)) && max(data(:)) <= 1);
assert(size(data) == [facedim(1)*facedim(2); nfaces]);
