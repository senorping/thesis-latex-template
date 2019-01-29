function [dens] = liqdens (T,A,B,C,D)
% Fit-Function for Density calculation, Equation 17 VDI W�rmeatlas
% Returns Density in kg/m3, Input Variables:
%   Temperature T in �C
%   Fit-Paramters A, B , C, D from VDI W�rmeatlas

T = T + 273.15;
dens = 1 - (T/C);
dens = dens^D;
dens = 1 + dens;
dens = B^dens;
dens = A/dens;
endfunction