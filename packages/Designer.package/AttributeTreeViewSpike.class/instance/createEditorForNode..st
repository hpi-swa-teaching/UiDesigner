as yet unclassified
createEditorForNode: node
	| editor |
	
	editor := ((node at: #type) = Collection) ifTrue: [ (self editorTemplates at: (node type)) value: node ]
									  		 ifFalse: [ (self editorTemplates at: (node type)) value].
	editor theText: (node at: #propertyValue).
	
	^ editor