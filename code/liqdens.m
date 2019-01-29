function [dens] = liqdens (T,A,B,C,D)
% Fit-Function for Density calculation, Equation 17 VDI Wärmeatlas
% Returns Density in kg/m3, Input Variables:
%   Temperature T in °C
%   Fit-Paramters A, B , C, D from VDI Wärmeatlas

T = T + 273.15;
dens = 1 - (T/C);
dens = dens^D;
dens = 1 + dens;
dens = B^dens;
dens = A/dens;
endfunction