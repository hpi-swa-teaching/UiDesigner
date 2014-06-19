highlighting
highlight 
	| borderedMorph |
	(self isHighlighted) ifFalse: 
		[borderedMorph := BorderedMorph new
								borderColor: Color red;
								borderWidth: 3;
								color: Color transparent;
								bounds: self outerBounds;
								yourself.
		self addMorphBack: borderedMorph.
		self isHighlighted: true.]