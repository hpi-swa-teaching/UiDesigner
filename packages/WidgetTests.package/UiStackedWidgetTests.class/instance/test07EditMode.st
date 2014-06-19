tests
test07EditMode

	self
		assert: 0 equals: sut pages size;
		assert: 0 equals: sut submorphs size.

	sut editMode: true.
	
	self
		assert: 1 equals: sut pages size;
		assert: 2 equals: sut submorphs size.
	