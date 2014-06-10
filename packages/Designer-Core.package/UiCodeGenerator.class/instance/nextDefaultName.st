accessing
nextDefaultName

	defaultNameCount := defaultNameCount + 1.
	^ #unnamedMorph, defaultNameCount asString asSymbol