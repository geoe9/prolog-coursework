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