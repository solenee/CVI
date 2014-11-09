function img = load_image(filename)
%% loads an image

    img = [];
    
%   YOUR CODE GOES HERE


%   checks
    assert(isfloat(img) & min(img(:)) >= 0 & max(img(:)) <= 1, ...
        'The image values should be floating point between 0 and 1.');

end