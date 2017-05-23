function [ output_args ] = prim3( input_args , length , factor1 , factor2 , factor3 )
%PRIM2 Summary of this function goes here
%   Detailed explanation goes here



output_args = zeros(length,1);
output_args(1)=  input_args(1);

    for i=2:length-1
       output_args(i) = factor1*input_args(i-1) - factor2*input_args(i) + factor2*input_args(i+1)*sin(i);
    end



end

