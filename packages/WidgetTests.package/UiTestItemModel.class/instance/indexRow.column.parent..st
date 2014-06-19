as yet unclassified
indexRow: aRowNumber column: aColumnNumber parent: aParentModelIndex

	| index |
	index := (UiSimpleModelIndex row: aRowNumber column: aColumnNumber)
		model: self;
		parent: aParentModelIndex.
		
	"Header indices."
	(aRowNumber = 0 or: [aColumnNumber = 0])
		ifTrue: [^ index].
		
	aParentModelIndex
		ifNil: [index setProperty: #data toValue: (data at: aRowNumber)]
		ifNotNil: [:i | index setProperty: #data toValue: ((i valueOfProperty: #data) value at: aRowNumber)].
		
	^ index
	