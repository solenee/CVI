function harris = compute_harris(dx2,dy2,dxdy,sigma)
%{
 Calculate the Harris function values by using the obtained structure tensor.

 Inputs:
   dx2
   dy2
   dxdy
   sigma

 Outputs:
   harris   image of Harris function values.
%}

alpha = 0.006;

% we assume that dx2, dy2 and dxdy have the same size
%harris = zeros(size(dx2));
for x=1:length(dxdy(:,1))
   for y=1:length(dxdy(1,:))
      C = [dx2(x,y) dxdy(x,y); dxdy(x,y) dy2(x,y)]; size(C);
      tr = trace(C);
      harris(x,y) = det(sigma*sigma*C) - alpha*tr*tr;
   end
end
