clear all;
close all;
clc; 

L = imread("face.bmp"); %Load image
L2 = imread("skull.bmp"); %Load image

mixAmount = input('Please enter a value: ');

Lmix = L * mixAmount;
L2mix = L2 * (1 - mixAmount);

C = Lmix + L2mix;

imshow([L, L2, C]);