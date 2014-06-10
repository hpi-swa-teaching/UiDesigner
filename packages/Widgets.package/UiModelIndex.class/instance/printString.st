printing
printString
	"Print the complete hierarchy of this model index."
	
	^ self parent
		ifNil: [super printString, ' (', self group, ')']
		ifNotNil: [super printString, ' (', self group, ')', ' -> ', self parent printString]