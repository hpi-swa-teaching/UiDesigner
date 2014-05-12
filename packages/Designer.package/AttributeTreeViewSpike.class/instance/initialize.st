as yet unclassified
initialize
	super initialize.
	self ui setupUi: self.
	
	treeModel := UiAttributeModel new.
	
	self ui treeView removeAllColumns; model: nil; 
			addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself})
			textConverter: [:node | (node includesKey: #attributeOriginClass)
					ifTrue: [('<b>' , (node at: #attributeOriginClass) , '</b>') asHtmlText]
					ifFalse: [node at: #propertyName]] ).
				
	self ui treeView model: treeModel.
	
	treeModel setNewWidget: (UiPushButton new)