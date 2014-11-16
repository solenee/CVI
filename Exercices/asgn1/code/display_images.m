function display_images(img1, img2)
%% displays two images in one figure.
%%
%   YOUR CODE GOES HERE
figure;
subplot(1,2,1); imshow(img1);
subplot(1,2,2); imshow(img2);
end