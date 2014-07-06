accessing
nextDefaultNameFor: aMorph

	defaultNameCount := defaultNameCount + 1.
	^ #unnamed, aMorph class asString asSymbol,defaultNameCount asString asSymbol