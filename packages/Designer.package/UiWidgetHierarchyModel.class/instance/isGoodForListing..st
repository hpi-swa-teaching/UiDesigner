accessing
isGoodForListing: aMorph
	| index |
	
	index := self blacklistedMorphs indexOf: (aMorph class).
	
	(index = 0) ifTrue: [ ^true ] ifFalse: [ ^false ].