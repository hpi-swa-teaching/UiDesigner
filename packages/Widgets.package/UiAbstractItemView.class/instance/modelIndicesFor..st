model - to index
modelIndicesFor: aNode
	"Return a list of all model indices that are associated with the given node."
	
	self viewport rows ifEmpty: [^ #()].

	self viewport rows do: [:row |
		"Model index in a row can be nil for group separators."
		row firstModelIndex ifNotNil: [:index |
			index node = aNode ifTrue: [^ row indices]]].
	
	^ #()