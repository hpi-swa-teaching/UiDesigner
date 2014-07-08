private
initDraggedMorph
	self color: (Color blue alpha: 0.01).
	
	widget := (((self passenger first at: #class) 
					new imageForm collectColors: 
						[:color | 	(color alpha > 0.5)
										ifTrue: [color alpha: 0.5]
										ifFalse: [color alpha: color alpha]. ]) 
						asMorph).

	self hasDropShadow: false.
		
	((self passenger first at: #class) isKindOf: (UiContainer class))
		ifTrue: [widget borderWidth: 1;
					borderColor: Color gray]. 
	
	self addMorphBack: widget.
	self updateCopyIcon.
	self changed; fullBounds