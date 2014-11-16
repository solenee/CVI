%% Problem 3 - Harris Detector

%% Parameters
sigma_0 = 2.4; harris_th = 1e-6; fsize = 25;

%% 1) Load the image with load_image
[im,imrgb] = load_image('../../data/a2p3.png');

%% 2) Calculate the structure tensor with compute_tensor

%% 3a) Compute Harris function values with compute_harris

%% 3b) Display the Harris image (Note: read doc for imshow and imagesc)

%% 4a) Obtain the x and y coordinates of remaining points after non maximum suppression
%%     and thresholding.

%% 4b) Display the points on top of the rgb image
