%% Problem 3 - Edge Detection
%  please use this skeleton and implement the specified functions

img = load_image('../data/a1p3.png');

[dx, dy] = create_filters();

[imgx, imgy] = filter_image(img, dx, dy);

display_images(imgx, imgy);

threshold = 0; % YOU SHOULD PICK A BETTER ONE
edges = detect_edges(imgx, imgy, threshold);

edges2 = nonmaxsupp(edges, imgx, imgy);