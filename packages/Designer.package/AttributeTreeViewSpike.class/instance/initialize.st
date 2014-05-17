as yet unclassified
initialize
	super initialize.
	self ui setupUi: self.
	
	treeModel := UiAttributeModel new.
	
	" necessary information for building the editors can be retrieved
	  from UiItemViewColumnSpec[accessing - selectors]"
	self ui treeView removeAllColumns; model: nil; 
			addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself})
				textConverter: [:node | (node includesKey: #attributeOrigin)
					ifTrue: [('<b>' , (node at: #attributeOrigin) , '</b>') asHtmlText]
					ifFalse: [node at: #propertyName]]);
				
			addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #propertyValue})
				editableSelector: #isEditable;
				editorCreator: [ :spec :node | self createEditorForNode: node ];
				editorFinisher: [:editor :node | |result|
								result := self convertEditedValueForNode: node FromText: (editor theText).
								treeModel changeProperty: (node at: #propertyName) To: result ];
				textConverter: [:node | (node includesKey: #propertyValue) ifTrue: [node at: #propertyValue]]).
				
	self ui treeView model: treeModel.
	
	treeModel setNewWidget: self ui button.
	
	self expandAttributeCategories.