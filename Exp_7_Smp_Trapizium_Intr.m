clc
clear all
syms x;

Pre_Defined_Integration=int(cos(x), 0, pi/4)

h=(pi/4-0)/1;
Smpl_Trapizium_Integration=(h/2)*(cos(pi/4)+cos(0))
