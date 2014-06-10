scrolling
scrollToBottom

	self widget ifNil: [^ self].
	
	self scrollToShow: (self widget bottomLeft extent: 1@1).