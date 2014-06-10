rows/columns - to pixel
rowBoundsAt: aRowIndex

	| rowBounds indent row |
	rowBounds := super rowBoundsAt: aRowIndex.
	rowBounds width = 0 ifTrue: [^ rowBounds].
	
	row := self rowAt: aRowIndex.
	
	self flag: #magicNumber. "mt: 12 is the size of the tree structure decoration."
	indent := (self rootIsDecorated or: [row parentModelIndex notNil])
		ifTrue: [(row items first valueOfProperty: #indent) - 12]
		ifFalse: [row items first valueOfProperty: #indent].
	
	^ rowBounds insetBy: (indent @ 0 corner: 0 @ 0)