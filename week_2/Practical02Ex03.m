clear all;
close all;
clc; 

L = imread("normalLung.png"); %Load image
L = double(L);
M=size(L,1); %Get rows
N=size(L,2); %Get columns


%Step 1, find the mean
xRayArithmeticMean = mean2(L);
disp(['Arithmetic Mean: ' num2str(xRayArithmeticMean)]);

%Step 2, subtract the mean from each pixel and square result
Lsubtracted = (L - xRayArithmeticMean);
Lsubtracted = Lsubtracted.^2;

%Step 3, Sum up all the values
sumOfLsubtracted = sum(sum(Lsubtracted)); %We do twice as it is 2D Matrix

%Step 4, sqrt the mean to get the RMS
mean = sumOfLsubtracted * (1/(M * N));
sqrtMean = sqrt(mean);

fprintf('\nRMS: %.2f', sqrtMean);


