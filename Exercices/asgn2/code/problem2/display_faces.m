function display_faces(U,mu,facedim)
%{
 Display the first 10 Eigenfaces and the mean face in a single figure.

 Inputs:
   U          pca bases
   mu         mean face
   facedim    face dimension
%}
figure
title('display_faces')
%% display mean face 
subplot(5,2,1); imshow(mu);
%% display the 10 first Eigenfaces
% TO DO
subplot(5,2,3); imshow(U(1,1));



