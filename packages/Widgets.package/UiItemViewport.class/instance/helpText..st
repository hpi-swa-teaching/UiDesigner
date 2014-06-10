accessing
helpText: aString

	(self dragDropSpec isNil and: [aString isNil or: [aString isEmpty]])
		ifTrue: [^ self].

	^ (self dragDropSpec ifNil: [self dragDropSpec: UiItemViewDragDropSpec new])
		helpText: aString