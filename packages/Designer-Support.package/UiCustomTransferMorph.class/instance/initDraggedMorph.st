private
initDraggedMorph

	self color: (Color blue alpha: 0.01).
	
	self
		makeMorphTransparent;
		drawBorderForContainer;
		addMorphBack: self widget;
		changed; 
		fullBounds