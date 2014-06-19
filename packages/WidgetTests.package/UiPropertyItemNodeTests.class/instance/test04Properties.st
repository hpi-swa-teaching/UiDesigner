tests
test04Properties

	| sut |
	sut := UiPropertyItemNode new.
	self assert: sut properties isEmpty.
	
	sut at: #label put: 'Hello, World'.
	self assert: 1 equals: sut properties size.
	
	sut at: #apple put: 'Tasty!'.
	self
		assert: #label equals: sut properties first;
		assert: #apple equals: sut properties second.
		
	sut removeKey: #label.
	self assert: 1 equals: sut properties size.