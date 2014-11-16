function img2 = debayer(red, green, blue)
%% takes a bayer image and interpolates missing values to create a full
%  image.
%
%%
    img2 = zeros([480 320 3]);
%   YOUR CODE GOES HERE    
    for i = 1:size(img2,1) % loop verical
        for j = 1:size(img2,2) % loop horizontal
            iG = (green(max(1,i-1),j) + green(min(size(img2,1),i+1),j) + green(i,max(1,j-1)) + green(i,min(size(img2,2),j+1))) / 4;
            
            if mod(j-1,2) == 0 && mod(i-1,2) ~= 0
                iR = (red(max(1,i-1),max(1,j-1)) + red(min(size(img2,1),i+1),min(size(img2,2),j+1)) + red(i-1,min(size(img2,2),j+1)) + red(min(size(img2,1),i+1),max(1,j-1))) / 4;
                img2(i,j,:) = [iR, iG, blue(i,j)];
            elseif mod(j-1,2) ~= 0 && mod(i-1,2) == 0
                iB = (blue(max(1,i-1),max(1,j-1)) + blue(min(size(img2,1),i+1),min(size(img2,2),j+1)) + blue(max(1,i-1),min(size(img2,2),j+1)) + blue(min(size(img2,1),i+1),max(1,j-1))) / 4;
                img2(i,j,:) = [red(i,j), iG, iB];
            elseif ~xor(mod(j-1,2) == 0, mod(i-1,2) == 0)
                if mod(i-1,2) ~= 0
                    iR = (red(max(1,i-1),j) + red(min(size(img2,1),i+1),j)) / 2; % grab red from vertical neighbors
                    iB = (blue(i,max(1,j-1)) + blue(i,min(size(img2,2),j+1))) / 2; % grab blue from horizontal neighbors
                else
                    iB = (blue(max(1,i-1),j) + blue(min(size(img2,1),i+1),j)) / 2; % grab blue from vertical neighbors
                    iR = (red(i,max(1,j-1)) + red(i,min(size(img2,2),j+1))) / 2; % grab red from horizontal neighbors
                end
                assert(iR ~= 0 || i==1 || j==1, '%d %d', i, j)
                img2(i,j,:) = [iR, green(i,j), iB];
            else
                assert(false);
            end
        end
    end
    
    
end