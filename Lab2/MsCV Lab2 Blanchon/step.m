function [ step ] = step( n, Length )
%STEP
%   Step Function

   step=0:1:Length;
    T=step;
    n=n+1;

    if nargin < 1
        n=0;
        Length=20;
    end

    if Length > 20

        warning('Input Length must be less than 20')

        else if n > Length 

        warning('Input N must be less than Length')

        else

            for i = 1:Length+1
                step(i) = 0;
            end
            
            for i = n:Length+1
                step(i) = 1;
            end
            figure
            stem(T,step)

            str = sprintf('Step Function with retard of N = %i',n-1);
            title(str)
        
    end

    


end

