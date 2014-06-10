manual mapping
unmapIndex: anIndex

	self map ifNil: [^ anIndex].
	^ self map indexOf: anIndex