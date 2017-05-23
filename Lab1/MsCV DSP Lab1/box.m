function [ box ] = box( n, Length, a )
%BOX 
%  





   box=0:1:Length;
    T=box;
    n=n+1;

    if nargin < 1
        n=1;
        a=10;
        Length=20;
    end

    if Length > 20

        warning('Input Length must be less than 20')

        else if n > Length 

        warning('Input N must be less than Length')

            else if a > (Length-n)
                   
                    warning('Input shift must be less than Length - n')
                    
                else
                

                    for i = 1:Length+1
                        box(i) = 0;
                    end

                    for i = n-a:n+a
                        box(i) = 1;
                    end
                    figure
                    stem(T,box)

                    str = sprintf('Ramp Function with retard of N = %i and shift a = %i',n-1, a);
                    title(str)
                end

      end

  

end

