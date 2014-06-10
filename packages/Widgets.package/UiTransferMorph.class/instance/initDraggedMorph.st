private
initDraggedMorph

	self initDraggedMorphFor: ((self passenger isCollection and: [self passenger isString not])
		ifFalse: [{self passenger}]
		ifTrue: [self passenger]).