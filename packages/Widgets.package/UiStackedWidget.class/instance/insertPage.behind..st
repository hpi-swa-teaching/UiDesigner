add/remove
insertPage: aMorph behind: anotherPage

	aMorph 
		hResizing: #spaceFill;
		vResizing: #spaceFill.

	self pages add: aMorph after: anotherPage.
	self currentIndex: (self pages indexOf: aMorph).