highlighting
highlight 
	| borderedMorph |
	borderedMorph := BorderedMorph new
							borderColor: Color red;
							borderWidth: 3;
							color: Color transparent;
							bounds: self outerBounds;
							yourself.
	self addMorphBack: borderedMorph.
	self isHighlighted: true.
