function imrecon = compute_reconstruction(faceim,U,mu,ncomp)
%{
 Project the face and reconstruct it using a given number of components

 Inputs:
   faceim   face image
   U        Eigenvectors of covariance matrix of X
   mu       mean face
   ncomp    Number of pca components.

 Outputs:
   imrecon  face reconstruction using ncomp components
%}

imrecon =
