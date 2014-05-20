attribute editing
createEditorForNode: node
	| editor |
	
	editor := ((node at: #type) = Collection) ifTrue: [ (self attributeEditorTemplates at: (node type)) value: node ]
									  		 ifFalse: [ (self attributeEditorTemplates at: (node type)) value].
	editor theText: (node at: #propertyValue).
	
	^ editor