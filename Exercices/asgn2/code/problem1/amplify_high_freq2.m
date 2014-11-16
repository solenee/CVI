function L_amp = amplify_high_freq2(L)
%{
 Amplifies frequencies of the finest two levels.

 Inputs:
   L       Laplacian image pyramid.

 Outputs:
   L_amp       Laplacian image pyramid with amplified levels.
%}

L_amp = ;

% format check
assert(iscell(L_amp));
