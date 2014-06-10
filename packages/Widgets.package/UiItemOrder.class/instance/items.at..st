accessing
items: someItems at: anIndex
	
	self map ifNil: [^ someItems at: anIndex].
	^ someItems at: (self map at: anIndex)