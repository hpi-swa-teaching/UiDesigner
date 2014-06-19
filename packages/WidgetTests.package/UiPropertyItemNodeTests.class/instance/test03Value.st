tests
test03Value

	| sut |
	sut := UiPropertyItemNode new.
	
	self assert: sut data isNil.
	
	sut data: #foobar.
	
	self assert: #foobar equals: sut data.