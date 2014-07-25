updating
isMorphTopLevelContainer: aMorph
	
	^ ((aMorph isKindOf: UiContainer) and: [(aMorph owner isKindOf: UiContainer) not])