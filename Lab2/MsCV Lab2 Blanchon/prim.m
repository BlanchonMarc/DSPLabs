function [ output_args ] = prim( input_args , length , factor )
%Input args is vector
%Length
%Factor is the value of mutliplication for the past state of the initial
%output

output_args = zeros(length,1);
output_args(1)=  input_args(1);

    for i=2:length
       output_args(i) = factor*output_args(i-1) + input_args(i);
    end


end

