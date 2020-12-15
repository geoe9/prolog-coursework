% -- Question 2.1 -- %
par( N )
    :- (N // 100) mod (N mod 100) =:= 0,
       number_chars( N, X ),
       length( X, 4 ),
       \+ member( '0', X ),
    
unique(

% -- Question 2.2 -- %
pars
    :- par( N ),
       write( N ),
       fail.