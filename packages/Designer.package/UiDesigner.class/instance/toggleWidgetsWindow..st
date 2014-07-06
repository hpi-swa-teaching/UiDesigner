accessing
toggleWidgetsWindow: aBoolean	
	aBoolean 
		ifTrue: [ self openWidgetsWindow.]
		ifFalse: [ self widgetsWindow owner delete. self widgetsWindow: nil.]