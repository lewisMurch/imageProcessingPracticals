clear all;
close all;
clc; 

NL = imread("normalLung.png");
COPDL = imread("copdLung.png");

M=size(NL,1); %Get rows
N=size(NL,2); %Get columns

xRayMin = min(min(NL));
xRayMax = max(max(NL));

disp(['Min value: ' num2str(xRayMin)]);
disp(['Max value: ' num2str(xRayMax)]);

xRayMin = double(xRayMin);
xRayMax = double(xRayMax);

cRange = xRayMax - xRayMin;
cNormRange = cRange / (2^8 -1);
cMich = (xRayMax - xRayMin) / (xRayMax + xRayMin);

fprintf('\nRange Contrast: %.3f', cRange);
fprintf('\nNormalised Range Contrast: %.3f', cNormRange);
fprintf('\nMichelson Contrast: %.3f', cMich);