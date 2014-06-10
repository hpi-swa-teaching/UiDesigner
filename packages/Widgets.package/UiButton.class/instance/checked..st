accessing
checked: aBoolean

	(aBoolean == checked or: [self checkable not])
		ifTrue: [^ self].	
	
	checked := aBoolean.
	
	self toggled: aBoolean.
	
	self redrawLater.
	
	"Handle auto-exclusiveness."
	(self autoExclusive and: [self checked])
		ifTrue: [self owner ifNotNil: [:group |
			group submorphs
				select: [:m | (m isKindOf: UiButton) and: [m ~= self]]
				thenDo: [:m | m checked: false]]].