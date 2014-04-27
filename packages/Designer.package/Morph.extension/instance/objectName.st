*designer
objectName

	^  (self valueOfProperty: #objectName ifAbsent: [''])
		ifNil: ['']