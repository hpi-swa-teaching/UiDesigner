*widgets
balloonText: stringOrText

	^ self setBalloonText: (stringOrText
		ifNotNil: [:s | s ifEmpty: []])