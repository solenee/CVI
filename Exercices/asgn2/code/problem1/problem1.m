%% Problem 1 - Image Pyramids and Image Sharpening

%% Parameters
fsize = [5 5]; sigma = 1.5; nlevels = 6;

%% Load image
im = im2double(imread('../../data/a2p1.png'));

%% 1) Create a Gaussian image pyramid with 6 levels using make_gaussianpyramid

%% 2) Display the Gaussian pyramid in one figure with display_pyramid

%% 3a) Create a Laplacian image pyramid with 6 levels using make_laplacianpyramid

%% 3b) Display the Laplacian pyramid in one figure with display_pyramid

%% 4a) Amplify finest two sub-bands of the Laplacian pyramid with amplify_high_freq2

%% 4b) Reconstruct the sharpened image with reconstruct_laplacianpyramid

%% 4c) Display original, reconstruction and their difference in a single figure

