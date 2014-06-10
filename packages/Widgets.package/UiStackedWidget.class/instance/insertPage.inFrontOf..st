add/remove
insertPage: aMorph inFrontOf: anotherPage

	aMorph 
		hResizing: #spaceFill;
		vResizing: #spaceFill.

	self pages add: aMorph before: anotherPage.
	self currentIndex: (self pages indexOf: aMorph).