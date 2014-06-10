testing
includesAnyProperty: someProperties inNode: aNode
	
	^ someProperties anySatisfy: [:property | self includesProperty: property inNode: aNode]