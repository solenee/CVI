function [red, green, blue] = separate_bayer(data)
%% takes bayer data, separates color channels and 
%  fills missing values with zero
%%
    %red = [];
    %green = [];
    %blue = [];
    
    im = data.bayerimg / 255;
    
%   YOUR CODE GOES HERE
% green1 = reshape(a.bayerimg, [1, 320*480]);
% green2 = green1(1:2:end); % every second element (treat it one dimensionally)
% temp = [green2; zeros(size(green2))];
% green3 = temp(:)';
% green = reshape(green3, 320, 480)';

green = zeros([480 320]);
red = zeros([480 320]);
blue = zeros([480 320]);

for i = 1:size(im,1) % loop vertical
    for j = 1:size(im,2) % loop horizontal
        if mod(j-1,2) == 0 && mod(i-1,2) ~= 0
            blue(i,j) = im(i,j);
        elseif mod(j-1,2) ~= 0 && mod(i-1,2) == 0
            red(i,j) = im(i,j);
        elseif ~xor(mod(j-1,2) == 0, mod(i-1,2) == 0)
            green(i,j) = im(i,j);
        else
            assert(false);
        end
    end
end

end