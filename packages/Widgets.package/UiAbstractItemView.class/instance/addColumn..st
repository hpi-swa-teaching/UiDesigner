rows/columns - specs
addColumn: aColumnSpec
	"Append a new column according to the given specification. Make sure that your model satisfies this specification."
	
	self addColumns: {aColumnSpec}.