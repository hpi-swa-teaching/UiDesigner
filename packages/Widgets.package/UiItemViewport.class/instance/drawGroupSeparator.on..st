drawing
drawGroupSeparator: aMorph on: aCanvas
	"Draw something that expands the group separator item to the whole width."
	
	| offset |
	offset := (aMorph valueOfProperty: #indent) > 0
		ifTrue: [self indent negated]
		ifFalse: [0].
	aCanvas
		translateBy: offset @ 0
		during: [:c | c fullDrawMorph: aMorph].
	
	(aMorph valueOfProperty: #drawLine) == true ifTrue: [
		aCanvas
			line: (aMorph right + offset) @ (aMorph center y + self groupSpec lineOffset)
			to: self right @ (aMorph center y + self groupSpec lineOffset)
			color: (self groupSpec lineColor alpha: 0.4)].