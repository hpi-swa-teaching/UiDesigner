as yet unclassified
createEditorForNode: node
	((node at: #type) = #list) ifTrue: [ ^ (self editorTemplates at: (node type)) value: node ]
							  ifFalse: [ ^ (self editorTemplates at: (node type)) value]