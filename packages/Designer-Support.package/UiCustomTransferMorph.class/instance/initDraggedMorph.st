private
initDraggedMorph
	self color: (Color blue alpha: 0.01).
	
	" make the morph transparent "
	widget := (((self passenger first at: #class) 
					new imageForm collectColors: 
						[:color | 	(color alpha > 0.5)
										ifTrue: [color alpha: 0.5]
										ifFalse: [color alpha: color alpha]. ]) 
						asMorph).

	self hasDropShadow: false.
	self colorFirstMorph.
	self addMorphBack: widget.
	self updateCopyIcon.
	self changed; fullBounds.