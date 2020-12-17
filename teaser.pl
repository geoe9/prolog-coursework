% -- Question 2.1 -- %
par( N )
    :- between( 1111, 9999, N ),
       R is N mod 100,
       R =\= 0,
       (N // 100) mod R =:= 0,
       number_chars( N, X ),
       length( X, 4 ),
       \+ member( '0', X ),
       unique( X ).
    
unique( [] ).
unique( [H|T] )
    :- \+ member( H, T ),
       unique( T ).

% -- Question 2.2 -- %
pars( PARS )
    :- findall( P, par( P ), PARS).

% -- Question 2.3 -- %
party( X, Y )
    :- par( X ), par( Y ),
       number_chars( X, X1 ), number_chars( Y, Y1 ),
       append( X1, Y1, R ),
       unique( R ),
       subtract( [1,2,3,4,5,6,7,8,9], R, [D|_] ),
       (X mod D =:= 0), (Y mod D =:= 0). % not sure why this line doesn't work

% -- Question 2.4 -- %
partys( PARTYS )
    :- findall( [P1, P2], party( P1, P2 ), PARTYS ).