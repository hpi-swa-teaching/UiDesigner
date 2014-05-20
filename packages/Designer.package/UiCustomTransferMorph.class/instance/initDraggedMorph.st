private
initDraggedMorph

	widget := (self passenger first at: #class) new imageForm asMorph.

	self addMorphBack: widget.
	self updateCopyIcon.
	self changed; fullBounds