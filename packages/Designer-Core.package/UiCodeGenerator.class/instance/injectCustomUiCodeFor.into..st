codeInjection
injectCustomUiCodeFor: aMorph into: stream

	| value isCode |
	
	aMorph class widgetProperties do: [:category |
		category value do: [:property |
			isCode := false.
			property value == Form
				ifTrue: [
					value := aMorph
						valueOfProperty: (property key, #ByDesigner) asSymbol
						ifAbsent: [].
					isCode := true.
					
					"Note down this special property for later use in designer"
					stream crtab; nextPutAll: (self propertyTemplate3 format: {
						aMorph valueOfProperty: #objectNameTemp.
						(property key, #ByDesigner).
						value})]
				ifFalse: [value := aMorph perform: property key].

		stream crtab; nextPutAll: (self propertyTemplate2 format: {
			aMorph valueOfProperty: #objectNameTemp.
			property key.
			value isSymbol ifTrue: ['#'] ifFalse: [''].
			value isText ifTrue: [value asString] ifFalse: [value].
			"add string quotation"
			value isSymbol not & isCode not 
				& (value isString | value isText) ifTrue: [''''] ifFalse: [''].
			value isSymbol not & isCode not 
				& (value isString | value isText) ifTrue: [''''] ifFalse: ['']})]].
	
