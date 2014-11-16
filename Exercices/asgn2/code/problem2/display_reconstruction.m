function display_reconstruction(faceim,f5,f15,f50,f150)
%{
 displays the reconstructed faces and the original in one plot

 Inputs:
   faceim   original face
   f5       face reconstruction using 5   components
   f15      face reconstruction using 15  components
   f50      face reconstruction using 50  components
   f150     face reconstruction using 150 components
%}
figure
title('display_reconstruction')
legend('1', '2', '3', '4', '5')
subplot(1,5,1); imshow(faceim)
subplot(1,5,2); imshow(f5)
subplot(1,5,3); imshow(f15)
subplot(1,5,4); imshow(f50)
subplot(1,5,5); imshow(f150)


