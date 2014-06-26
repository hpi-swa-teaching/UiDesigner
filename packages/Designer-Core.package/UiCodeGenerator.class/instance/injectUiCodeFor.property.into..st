codeInjection
injectUiCodeFor: aMorph property: aProperty into: stream

	| value |

	value := aMorph perform: aProperty.

	stream crtab; nextPutAll: (self propertyTemplate format: {
		aMorph valueOfProperty: #objectNameTemp.
		aProperty.
		value isSymbol ifTrue: ['#'] ifFalse: [''].
		value}).