tests - mouse input
testM01MouseWheel

	sut
		extent: 100@100;
		widget: (Morph new extent: 500@500).
	
	self assert: 0 equals: sut transformMorph verticalOffset.
	
	self
		mouseWheelDown;
		assert: sut verticalScrollBar singleStep equals: sut transformMorph verticalOffset.
		
	self
		mouseWheelUp;
		assert: 0 equals: sut transformMorph verticalOffset.