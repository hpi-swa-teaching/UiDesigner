add/remove - appending
appendRowFor: aModelIndex
	"Optimized method that only appends a new row at the end of all rows."
	
	aModelIndex parent ifNotNil: [self error: 'You cannot use this method for non-toplevel indices.'].
	
	^ (rows notEmpty and: [rows last isRowFor: aModelIndex])
		ifTrue: [rows last "used for column-wise appending. see #appendItemRows:."]
		ifFalse: [rows add: UiViewRowInfo new].