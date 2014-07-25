private
initDraggedMorph

	self color: (Color blue alpha: 0.01).
	
	self
		makeMorphTransparent;
		hasDropShadow: false;
		colorFirstMorph;
		addMorphBack: self widget;
		updateCopyIcon;
		changed; fullBounds