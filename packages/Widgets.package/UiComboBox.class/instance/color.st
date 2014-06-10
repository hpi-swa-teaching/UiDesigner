accessing
color
	"Return button color if in read-only mode."

	^ self readOnly
		ifTrue: [readOnlyButton color]
		ifFalse: [super color]