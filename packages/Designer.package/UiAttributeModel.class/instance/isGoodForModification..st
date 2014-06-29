accessing
isGoodForModification: variableName
	| index |
	
	index := self nonModifiableVariableNames indexOf: variableName.
	
	(index = 0) ifTrue: [ ^true ] ifFalse: [ ^false ].