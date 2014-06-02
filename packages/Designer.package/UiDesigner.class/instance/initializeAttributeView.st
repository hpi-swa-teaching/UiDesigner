initialization
initializeAttributeView
	self ui attributeTreeView removeAllColumns; model: nil; 
			addColumn: ((UiItemViewColumnSpec new)
				textSelector: #yourself;
				textConverter: [:node | (node includesKey: #attributeOrigin)
					ifTrue: [('<b>' , (node at: #attributeOrigin) , '</b>') asHtmlText]
					ifFalse: [node at: #propertyName]]);
				
			addColumn: ((UiItemViewColumnSpec new)
							
				textSelector: #propertyValue;
				editableSelector: #isEditable;
				editorCreator: [ :spec :node | self createEditorForNode: node ];
				editorFinisher: [:editor :node | self saveRawValue: (editor theText) ForNode: node];
				textConverter: [:node | (node includesKey: #propertyValue) ifTrue: [node at: #propertyValue]]).
				
	self ui attributeTreeView model: self attributeTreeModel.