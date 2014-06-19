tests
test02Children

	| sut |
	sut := UiPropertyItemNode new.
	
	self
		assert: 0 equals: sut childCount;
		should: [sut childAt: 1] raise: Error.
		
	sut
		addDefaultGroup;
		addChild: UiPropertyItemNode new.
	
	self
		assert: 1 equals: sut childCount;
		shouldnt: [sut childAt: 1] raise: Error.
