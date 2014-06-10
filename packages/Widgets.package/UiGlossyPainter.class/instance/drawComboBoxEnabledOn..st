drawing - specific
drawComboBoxEnabledOn: aCanvas

	self morph readOnly ifTrue: [^ self].
	
	self drawTextEdit: self morph on: aCanvas.