accessing
toggleAttributesWindow: aBoolean	
	aBoolean 
		ifTrue: [ self openAttributesWindow.]
		ifFalse: [ self attributeTreeModel
					   disconnectSignal: #modelReset
					   from: self attributesWindow 
					   selector: #expandAllAttributeCategories.
				self attributesWindow owner delete. 
				self attributesWindow: nil.]