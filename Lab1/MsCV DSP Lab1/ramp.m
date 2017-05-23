function [ ramp ] = ramp( n, Length, a )
%RAMP 
%   



   ramp=0:1:Length;
    T=ramp;
    n=n+1;

    if nargin < 1
        n=0;
        a=1;
        Length=20;
    end

    if Length > 20

        warning('Input Length must be less than 20')

        else if n > Length 

        warning('Input N must be less than Length')

        else

            for i = 1:Length+1
                ramp(i) = 0;
            end
            slope=a;
            for i = n+1:Length+1
                ramp(i) = a*1;
                a=a+slope;
            end
            figure
            stem(T,ramp)

            str = sprintf('Ramp Function with retard of N = %i and slope a = %i',n-1, slope);
            title(str)
        
    end

    


end

