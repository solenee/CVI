%%-------------
%% From assignment 1
%% Loads an image from the filename
%%-------------
function img = load_image(filename)
%% loads an image

    img = [];
    
%   YOUR CODE GOES HERE
    img = double(imread(filename))/256;

%   checks
    assert(isfloat(img) & min(img(:)) >= 0 & max(img(:)) <= 1, ...
        'The image values should be floating point between 0 and 1.');

end
