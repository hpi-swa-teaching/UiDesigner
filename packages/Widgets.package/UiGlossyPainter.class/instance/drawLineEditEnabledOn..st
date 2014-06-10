drawing - specific
drawLineEditEnabledOn: aCanvas

	| font |
	self drawTextEditEnabledOn: aCanvas.
	
	"Draw help text."
	(self morph helpText isEmpty or: [self morph textMorph contents notEmpty]) ifTrue: [^ self].

	font := self morph textMorph textStyle defaultFont.

	aCanvas
		drawString: self morph helpText 
		in: (self bounds translateBy: 5 @ (self bounds height - font height // 2))
		font: font
		color: (Color gray: 0.7).