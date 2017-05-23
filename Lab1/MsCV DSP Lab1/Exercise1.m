clear all;
close all;
clc;

disp('EXERCISE 1')
disp('Dirac Function')

Dirac(10,20);

disp('Step Function')

step(10,20);

disp('Ramp Function')

ramp(10,20, 2);

disp('Geometric Function')

geo(10,20, 2);

disp('Box Function')

geo(10,20, 3);

disp('SinFn Function')

sinfn(10,100,2);
sinfn(10,1000,2);
sinfn(10,30,2);

%When we have the sampling as 30, we can see that we don't have
%a good sampling frequency.
%We don't have a sin anymore and it's only because of the sampling
%frequency.
%We can also talk about Nyquist Theorem that gives you some kind of limits
%or let's say condition to have a good Sampling Frequency.
%Then we can say that Nyquist says 2*F is a good Frequency to sample so we
%deduce that this non-sin shape of the sampled signal is due to this.

