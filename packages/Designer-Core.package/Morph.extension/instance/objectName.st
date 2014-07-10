*designer-core
objectName

	^  (self valueOfProperty: #objectName ifAbsent: [''])
		ifNil: ['']