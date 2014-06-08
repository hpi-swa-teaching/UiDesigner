private - reading
injectUiCodeFor: aMorph property: aProperty into: stream

	| propertyTemplate value |
	propertyTemplate := '{1} {2}: ({3}{4}).'.

	value := aMorph perform: aProperty.

	stream crtab; nextPutAll: (propertyTemplate format: {
		aMorph valueOfProperty: #objectNameTemp.
		aProperty.
		value isSymbol ifTrue: ['#'] ifFalse: [''].
		value}).