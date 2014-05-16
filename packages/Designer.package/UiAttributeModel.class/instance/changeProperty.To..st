updating
changeProperty: newProperty To: value
	| property oldValueClass |
	
	property := newProperty asSymbol.
	oldValueClass := (self currentWidget perform: property) class.
	oldValueClass := ('as' , oldValueClass) asSymbol.
	
	Transcript show: oldValueClass.
	
	value perform: oldValueClass.
	
	"self currentWidget perform: ((property , ':') asSymbol) withArguments: {value}."