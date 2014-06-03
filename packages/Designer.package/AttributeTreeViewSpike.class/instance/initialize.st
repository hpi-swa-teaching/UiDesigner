as yet unclassified
initialize
	super initialize.
	self ui setupUi: self.
	
	treeModel := UiAttributeModel new.
	
	self ui treeView removeAllColumns; model: nil; 
			addColumn: ((UiItemViewColumnSpec new)
				textSelector: #yourself;
				textConverter: [:node | (node includesKey: #attributeOrigin)
					ifTrue: [('<b>' , (node at: #attributeOrigin) , '</b>') asHtmlText]
					ifFalse: [node at: #propertyName]]);
				
			addColumn: ((UiItemViewColumnSpec new)
				textSelector: #propertyValue;
				editableSelector: #isEditable;
				textConverter: [:node | (node includesKey: #propertyValue) ifTrue: [node at: #propertyValue]];
				morphSelector: #editorMorph;
				checkableSelector: #isCheckable;
				checkedSelector: #isChecked).
	
	self ui treeView model: treeModel.
	self ui treeView viewport eventHandler mouseDownPriority: 0.
	
	treeModel setNewWidget: self ui button.
	
	self expandAttributeCategories.