testing
includesAnyProperty: someProperties
	
	^ someProperties anySatisfy: [:property | self includesProperty: property]