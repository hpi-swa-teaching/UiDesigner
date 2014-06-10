events
copyCurrentTextToClipboard

	self selection currentCell ifNotNil: [:cell |
		Clipboard clipboardText: ((self morphAt: cell)
				valueOfProperty: #text ifAbsent: ['']) copy].