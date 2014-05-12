as yet unclassified
initialize
	super initialize.
	self ui setupUi: self.
	
	treeModel := UiAttributeModel new.
	
	" necessary information for building the editors can be retrieved
	  from UiItemViewColumnSpec[accessing - selectors]"
	self ui treeView removeAllColumns; model: nil; 
			addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself})
				textConverter: [:node | (node includesKey: #attributeOriginClass)
					ifTrue: [('<b>' , (node at: #attributeOriginClass) , '</b>') asHtmlText]
					ifFalse: [node at: #propertyName]]);
				
			addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #propertyValue})
				editableSelector: #propertyName;
				editorFinisher:  [:editor :node | node at: #propertyValue put: (editor theText).];
				textConverter: [:node | Transcript show: node. (node includesKey: #propertyValue) ifTrue: [node at: #propertyValue]]).
				
	self ui treeView model: treeModel.
	
	" a widgets properties will  be listed by sending the following message to the model "
	treeModel setNewWidget: (UiPushButton new)