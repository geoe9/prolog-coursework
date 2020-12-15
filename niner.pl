% -- Question 1.1 -- %
animal( X )
	:- member( X, [aardvark, kangaroo, antelope, coyote, dingo, donkey, elephant, horse, jaguar] ).

vegetable( X )
	:- member( X, [artichoke, cabbage, carrot, celery, leek, lettuce, marrow, onion, potato] ).

mineral( X )
	:- member( X, [anatase, basalt, cobolt, copper, galena, nickel, sodium, silver, zircon] ).

% -- Question 1.2 -- %
spell( W, X )
	:- atom_chars( W, X ).

% -- Question 1.3 -- %
main
	:- animal( A ),
	   spell( A, [L4, L5, L2, L5, L8, L9] ),
	   vegetable( V ),
	   spell( V, [L6, L5, L8, L7, L8, L5] ),
	   mineral( M ),
	   spell( M, [L7, L3, L7, L8, L7, L1, L9] ),
	   atomics_to_string( [L1, L2, L3, L4, L5, L6, L7, L8, L9], '', X ),
	   write( X ).