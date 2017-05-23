function [ sinfn ] = sinfn( freq , sampling , Nperiod)
%SINFN Summary of this function goes here
%   freq is frequency, Nperiod is number of period and Sampling is the
%   sampling frequency
T= 0 : 1/sampling : Nperiod/freq;
sinfn=sin(2*pi*T*freq)
figure
stem(T,sinfn)


end

