accessing
direction: aSymbol

	aSymbol = direction ifTrue: [^ self].
	
	direction := aSymbol.
	
	self submorphs ifNotEmpty: [self removeAllMorphs].
	self addMorph: ((self arrow: aSymbol) asMorph
		frameFractions: (0@0 corner: 1@1);
		ignoresColorMappings: true).  
	
	(#(left right) includes: aSymbol)
		ifTrue: [
			self
				hResizing: #rigid;
				vResizing: #spaceFill;
				layoutInset: (2@0 corner: 2@0)]
		ifFalse: ["up down"
			self
				hResizing: #spaceFill;
				vResizing: #rigid;
				layoutInset: (0@2 corner: 0@2)].