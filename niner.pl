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
/*alphabet( X )
	:- X = [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z].

solution( X, R )
	:- spell( X, W ),
       nth0( 4, W, R1 ), nth0( 5, W, R2 ), nth0( 2, W, R3 ), nth0( 5, W, R4 ), nth0( 8, W, R5 ), nth0( 9, W, R6 ),
       spell( R, [R1, R2, R3, R4, R5, R6] ).

main
	:- S = hey,
       write( S ).*/