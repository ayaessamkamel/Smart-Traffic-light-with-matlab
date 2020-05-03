function [numberofcars] = CountNumberOfCar(input_image1 ,input_image2)
%read car with road image
CarImage = imread(input_image1); 
%to read background
RoadImage = imread(input_image2); 
%convert to gray
CarGray = double(rgb2gray(CarImage));
%convert 2nd image to gray
RoadGray= double(rgb2gray(RoadImage));
% Get the size of the image
[height width] = size(CarGray);
hw = figure(1);
% Detection
thresh=11;
diff = abs(CarGray-RoadGray);
for I = 1:width
    for k = 1:height
        if (diff(k,I)>thresh)
        foto(k,I) = CarGray(k,I);
        else
        foto(k,I) = 0;
        end
    end
end
 subplot(2,2,1) , imagesc(CarImage), title (['Orignal Frame']);
 subplot(2,2,2) , imshow(mat2gray(CarGray)), title ('converted Frame');
 subplot(2,2,3) , imshow(mat2gray(RoadGray)), title ('BACKGND Frame ');
 %convert image intensity values to the color map
 dg=imadjust(foto);
 level=graythresh(dg);
 %Gaussian noise
 hj=imnoise(dg,'gaussian',0,0.025);
 %Weiner filter
 AfterFilter=wiener2(hj,[5,5]);
 bw=im2bw(AfterFilter,level);
 bw2=imfill(bw,'holes');
 bw3 = bwareaopen(bw2,5000);
 lsabeled = bwlabel(bw3,8);
 blobMeasurements = regionprops(lsabeled,'all');
 numberofcars = size(blobMeasurements, 1);
 subplot(2,2,4) , imagesc(lsabeled), title (['Foreground']);
 hold off;
 pause(2)
end