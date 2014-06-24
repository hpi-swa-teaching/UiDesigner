accessing
toggleAttributesWindow: aBoolean	
	aBoolean 
		ifTrue: [ self openAttributesWindow.]
		ifFalse: [ self attributesWindow owner delete. self attributesWindow nil.]