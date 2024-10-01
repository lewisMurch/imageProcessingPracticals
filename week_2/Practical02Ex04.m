clear all;
close all;
clc; 

L = imread("traffic1.bmp"); %Load image
L2 = imread("traffic2.bmp"); %Load image

C = uint8(abs(double(L2)-double(L))); %Make sure abs so no negative values are washed away
imshow([L, L2, C]);