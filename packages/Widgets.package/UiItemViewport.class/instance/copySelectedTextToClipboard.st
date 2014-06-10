events
copySelectedTextToClipboard

	Clipboard clipboardText: 
		(self selection cells inject: ''
			into: [:text :cell | text, ((self morphAt: cell) valueOfProperty: #text ifAbsent: ['']) asString, ' ']).