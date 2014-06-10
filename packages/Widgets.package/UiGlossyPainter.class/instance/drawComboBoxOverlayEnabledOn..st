drawing - specific
drawComboBoxOverlayEnabledOn: aCanvas

	| b |
	self morph readOnly ifFalse: [
		((self morph arrowButton raised not
			and: [self morph arrowButton down not])
			and: [self morph arrowButton checked not]) ifTrue: [
			aCanvas
				fillRectangle: (self morph arrowButton topLeft - (2@0) corner: self morph arrowButton bottomLeft + (2@0))
				color: self color].
		
		^ self].
	
	
	b := self morph readOnly
		ifTrue: [self morph readOnlyButton outerBounds]
		ifFalse: [self morph lineEdit outerBounds].
	
	aCanvas
		line: b topCenter
		to: self morph button outerBounds topCenter
		width: 1
		color: (self color mixed: 0.65 with: Color black).
		
	aCanvas
		line: b bottomCenter - (0@1)
		to: self morph button outerBounds bottomCenter - (0@1)
		width: 1
		color: (self color mixed: 0.65 with: Color black).