private - inst vars
collectInstVars

	instVars := OrderedCollection new.
	self injectInstVarsForMorph: source into: instVars.
	^ instVars