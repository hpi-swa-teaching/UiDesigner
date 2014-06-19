highlighting
unhighlight 
	(self isHighlighted) ifTrue: 
		[self removeMorph: self submorphs last.
		self isHighlighted: false.]