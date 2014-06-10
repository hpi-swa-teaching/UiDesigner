building
editorFor: aNode

	| editor |
	editor := (self editorCreator value: self value: aNode)
		hResizing: #spaceFill;
		setProperty: #selectable toValue: true;
		yourself.
	^ editor