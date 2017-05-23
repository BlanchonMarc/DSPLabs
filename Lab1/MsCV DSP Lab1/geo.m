function [ geo ] = geo( n, Length, a )
%GEO 
%   geometric function



   geo=0:1:Length;
    T=geo;
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
                geo(i) = 0;
            end
            num=a;
            power=1;
            for i = n+1:Length+1
                geo(i) = a^power;
                power=power+1;
            end
            figure
            stem(T,geo)

            str = sprintf('Geometric Function with retard of N = %i and inital number a = %i',n-1, num);
            title(str)
        
    end

    



end

