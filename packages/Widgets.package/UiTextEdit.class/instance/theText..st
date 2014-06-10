accessing
theText: aValue

	aValue ifNil: [^ self theText: ''].

	aValue == self theText ifTrue: [^ self].
	
	self originalText: aValue.  
	
	"Scroll to the beginning."
	self transformMorph offset: 0@0.
	
	self textMorph newContents: aValue asStringOrText.

	self autoConvert
		ifTrue: [self textMorph convertText]
		ifFalse: [self updateScrollBars].
	
	self textChanged: self theText.
	
	self autoConvert
		ifFalse: [	self valueChanged: aValue].
			
	self textMorph style.
	
	self updateLayout.