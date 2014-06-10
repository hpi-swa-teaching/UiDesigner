expand/collapse - convenience
expandAllNodes

	self viewport beginChangeLayout.
	
	[self expandAllIndicesSilentlyBreadthFirst: (self visibleIndicesIn: 1)]
		ensure: [self viewport endChangeLayout].