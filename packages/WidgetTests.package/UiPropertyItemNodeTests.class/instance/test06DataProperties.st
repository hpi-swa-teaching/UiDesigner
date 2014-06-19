tests
test06DataProperties

	| sut |
	sut := UiPropertyItemNode new.
	
	self assert: sut properties isEmpty.
	sut data: #foo.
	self assert: #data equals: sut properties first.