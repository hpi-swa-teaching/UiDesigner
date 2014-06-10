events-processing
mouseDownPriority
	"Give me ALL events."
	
	self editMode ifFalse: [^ super mouseDownPriority].
	^ 100