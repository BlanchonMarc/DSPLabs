function [ dirac ] = Dirac( n , Length )
%DIRAC Function
%   d(k) = 1 if k=0
%   d(k) = 0 elswhere
    dirac=0:1:Length;
    T=dirac;
    n=n+1;

    if nargin < 1
        n=0;
        Length=20;
    end

    if Length > 20

        warning('Input Length must be less than 20')

    else

        for i = 1:Length+1
            dirac(i) = 0;
        end

        dirac(n) = 1;
        
        stem(T,dirac)
        
        str = sprintf('Dirac Impulse with N = %i',n-1);
        title(str)
        
    end

    

end

