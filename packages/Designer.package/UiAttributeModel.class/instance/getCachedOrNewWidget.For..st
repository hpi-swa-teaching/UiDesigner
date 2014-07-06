caching
getCachedOrNewWidget: widgetClass For: anAttribute
	| returnWidget attributeSymbol |
	
	attributeSymbol := anAttribute asSymbol.
	
	^ self widgetCache at: attributeSymbol
		ifAbsent: [ returnWidget := widgetClass new.
				    self widgetCache at: attributeSymbol put: returnWidget.
				    ^ returnWidget ]