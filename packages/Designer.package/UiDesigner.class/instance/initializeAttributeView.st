initialization
initializeAttributeView
	self ui attributeTreeView removeAllColumns; model: nil; 
			addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself})
				textConverter: [:node | (node includesKey: #attributeOrigin)
					ifTrue: [('<b>' , (node at: #attributeOrigin) , '</b>') asHtmlText]
					ifFalse: [node at: #propertyName]]);
				
			addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #propertyValue})
				editableSelector: #isEditable;
				editorCreator: [ :spec :node | self createEditorForNode: node ];
				editorFinisher: [:editor :node | |result|
								result := self convertEditedValueForNode: node FromText: (editor theText).
								self attributeTreeModel changeProperty: (node at: #propertyName) To: result ];
				textConverter: [:node | (node includesKey: #propertyValue) ifTrue: [node at: #propertyValue]]).
				
	self ui attributeTreeView model: self attributeTreeModel.