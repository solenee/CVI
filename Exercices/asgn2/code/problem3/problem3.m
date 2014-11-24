%% Problem 3 - Harris Detector

%% Parameters
sigma_0 = 2.4; % sigma in the tensor C(sigma_0, 1.6*sigma_0)
harris_th = 1e-6; % threshold
fsize = 25; % filter size

%% 1) Load the image with load_image
[im,imrgb] = load_image('../../data/a2p3.png');
%{
figure,
subplot(2,1,1), imshow (im);
subplot(2,1,2), imshow(imrgb);
%}

%% 2) Calculate the structure tensor with compute_tensor
[dx2,dy2,dxdy] = compute_tensor(im, sigma_0, fsize);

%% 3a) Compute Harris function values with compute_harris
harris = compute_harris(dx2, dy2, dxdy, sigma_0);
sprintf('Harris function takes values between %d and %d', min(harris(:)),max(harris(:)))

%% 3b) Display the Harris image (Note: read doc for imshow and imagesc)
figure,
imagesc(harris)

%% 4a) Obtain the x and y coordinates of remaining points after non maximum suppression
%%     and thresholding.
[px,py] = nonmaxsupp(harris, harris_th); %give a relevant number with harris_th = 1e-3

%% 4b) Display the points on top of the rgb image
figure,
imshow(imrgb)
hold on 
plot(py, px,'yx')
hold off
