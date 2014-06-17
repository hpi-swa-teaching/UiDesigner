submorphs-add/remove
addMorphBack: aMorph

	super addMorphBack: aMorph.
	
	(aMorph isKindOf: UiButton) ifTrue: 
		[aMorph autoExclusive: true.
	
		self
			connect: aMorph signal: #clicked: toSelector: #clickButton: pattern: #(0);
			connect: aMorph signal: #pressed toSelector: #pressButton: pattern: #(0);
			connect: aMorph signal: #released toSelector: #releaseButton: pattern: #(0);
			connect: aMorph signal: #toggled: toSelector: #toggleButton: pattern: #(0).]