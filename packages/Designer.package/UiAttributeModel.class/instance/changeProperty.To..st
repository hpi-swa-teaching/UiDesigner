updating
changeProperty: property To: value
	self currentWidget perform: ((property , ':') asSymbol) withArguments: {value}.