% -- Question 2.1 -- %
par( N )
    :- (N // 100) mod (N mod 100) =:= 0,
       number_chars( N, X ),
       length( X, 4 ),
       \+ member( '0', X ),
       unique( X ).
    
unique( [] ).
unique( [H|T] )
    :- \+ member( H, T ),
       unique( T ).

% -- Question 2.2 -- %
pars
    :- par( N ),
       write( N ),
       fail.

% -- Question 2.3 -- %
party( X, Y )
    :- par( X ), par( Y ),
       number_chars( X, X1 ), number_chars( Y, Y1 ),
       append( X1, Y1, R ),
       unique( R ),
       missing_digit( R, D ),
       (X mod D) =:= 0, (Y mod D) =:= 0.

missing_digit( L, R )
    :- N = [1,2,3,4,5,6,7,8,9],
       subtract( N, L, [R|_] ).