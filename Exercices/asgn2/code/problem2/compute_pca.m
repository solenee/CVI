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

%% Singular value decomposition in economy size
covX = cov(X);
[U,S,V] = SVD(covX,0);

% returns a row vector whose elements are the mean of each column of X
mu = mean(X);
[Reigv, L] = eig(covX);
U = U*Reigv*V';
lambda = diag(S)
cumvar = cumvar(X);
