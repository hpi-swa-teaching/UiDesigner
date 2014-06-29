initialization
initializeAttributeView
	self ui treeView removeAllColumns; model: nil; 
			addColumn: ((UiItemViewColumnSpec new)
				textSelector: #yourself;
				itemOrientation: #horizontalMaxHeight;
				textConverter: [:node | (node includesKey: #attributeOrigin)
					ifTrue: [('<b>' , (node at: #attributeOrigin) , '</b>') asHtmlText]
					ifFalse: [node at: #propertyName]]);
				
			addColumn: ((UiItemViewColumnSpec new)
				textSelector: #propertyValue;
				editorAcceptSignal: #returnPressed;
				morphSelector: #editorMorph;
				checkableSelector: #isCheckable;
				checkedSelector: #isChecked).
	

	self ui treeView viewport eventHandler mouseDownPriority: 0.
	self ui treeView model: self uiDesigner attributeTreeModel.
	
	self connect: (self uiDesigner attributeTreeModel) signal: #modelReset to: self selector: #expandAllAttributeCategories.