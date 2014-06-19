running
tearDown

	sut isMorph ifTrue: [sut delete].
	super tearDown.