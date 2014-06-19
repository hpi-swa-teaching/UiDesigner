testing
testHighlighting
	self assert: ((container1 isHighlighted) = false).
	self assert: ((container2 isHighlighted) = false).
	
	container2 highlight.
	self assert: (container1 isHighlighted = false).
	self assert: (container2 isHighlighted = true).
	self assert: (container2 submorphs last isKindOf: BorderedMorph).
	
	container2 unhighlight.
	self assert: (container2 isHighlighted = false).