updating
changeProperty: newProperty To: value
	| property |
	
	property := (newProperty , ':') asSymbol.
	
	self currentWidget perform: property withArguments: {value}