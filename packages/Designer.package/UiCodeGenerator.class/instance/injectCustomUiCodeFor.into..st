private - reading
injectCustomUiCodeFor: aMorph into: stream

	| propertyTemplate propertyTemplate2 value isCode |
	propertyTemplate := '{1} {2}: ({5}{3}{4}{6}).'.
	propertyTemplate2 := '{1} setProperty: #{2} toValue: ''{3}''.'.
	
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
					stream crtab; nextPutAll: (propertyTemplate2 format: {
						aMorph valueOfProperty: #objectNameTemp.
						(property key, #ByDesigner).
						value})]
				ifFalse: [value := aMorph perform: property key].

		stream crtab; nextPutAll: (propertyTemplate format: {
			aMorph valueOfProperty: #objectNameTemp.
			property key.
			value isSymbol ifTrue: ['#'] ifFalse: [''].
			value isText ifTrue: [value asString] ifFalse: [value].
			"add string quotation"
			value isSymbol not & isCode not & (value isString | value isText) ifTrue: [''''] ifFalse: [''].
			value isSymbol not & isCode not & (value isString | value isText) ifTrue: [''''] ifFalse: ['']})]].
	
