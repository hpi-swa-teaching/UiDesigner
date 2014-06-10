actions
updateFocusColor: hasFocus

	hasFocus
		ifTrue: [self color: self colorFocusBackground]
		ifFalse: [
			self hasUnacceptedChanges
				ifTrue: [self color: self colorChangedBackground]
				ifFalse: [self displayMode = #highlight
					ifTrue: [self color: self colorHighlightedBackground]
					ifFalse: [self color: self colorBackground]]].