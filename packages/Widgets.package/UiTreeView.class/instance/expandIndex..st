expand/collapse - model index
expandIndex: aModelIndex
	"Any given index can be expanded. Collapsed parents will be expanded automatically."
	
	self flag: #asynch. "mt: Should use cached values from morph in item view?"
	(aModelIndex isNil or: [aModelIndex hasChildren not]) ifTrue: [^ self].
	
	self viewport beginChangeLayout.
	
	self
		expandIndexSilently: aModelIndex
		checkParents: true.
	
	self viewport endChangeLayout.