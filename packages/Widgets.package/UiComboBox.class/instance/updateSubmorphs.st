updating
updateSubmorphs

	self removeAllMorphs.
	
	self
		addMorphBack: (self readOnly ifTrue: [button] ifFalse: [arrowButton]);
		addMorphBack: (self readOnly ifTrue: [readOnlyButton] ifFalse: [lineEdit]).