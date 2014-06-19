tests
test03Toggle

	sut toggle.
	
	self assert: sut checked.
	
	sut toggle.
	
	self assert: sut checked.