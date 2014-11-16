function [U,lambda,mu,cumvar] = compute_pca(X)
%{
 Computes principal component analysis.

 Inputs:
   X        MxN entered data matrix

 Outputs:
   U        Eigenvectors of covariance matrix of X
   lambda   Eigenvalues of covariance matrix of X
   mu       mean data vector.
   cumvar   cumulative variance
%}

mu = ;
U = ;
lambda = ;
cumvar = ;
