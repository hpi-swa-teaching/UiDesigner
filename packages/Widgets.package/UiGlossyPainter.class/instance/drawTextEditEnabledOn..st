drawing - specific
drawTextEditEnabledOn: aCanvas

	| fillStyleLower fillStyleUpper c |.
	c := (self morph hasKeyboard not and: [self morph hasUnacceptedChanges])
		ifTrue: [self colorChanged]
		ifFalse: [self color].
	
	self morph outerBorderWidth > 0 ifTrue: [
		fillStyleLower := self fillStyleLower colorRamp:  {
			0.0 -> (c mixed: 0.81 with: self colorDarken).
			1.0 -> (c mixed: 0.85 with: self colorDarken)}.
		fillStyleUpper := self fillStyleUpper colorRamp: {
			0.0 -> (c mixed: 0.72 with: self colorDarken).
			1.0 -> (c mixed: 0.76 with: self colorDarken)}.

		self upperBounds in: [:b |
		aCanvas
			fillRectangle: (b insetBy: (0@1 corner: 0@0))
			fillStyle: fillStyleUpper;
			line: b topLeft + (1 @ 0)
			to: b topRight + (-2 @ 0)
			width: 1
			color: fillStyleUpper colorRamp first value].
		
		self lowerBounds in: [:b |
		aCanvas
			fillRectangle: (b insetBy: (0@0 corner: 0@1))
			fillStyle: fillStyleLower;
			line: b bottomLeft + (1@ -1)
			to: b bottomRight + (-2@ -1)
			width: 1
			color: fillStyleLower colorRamp last value].
	].

	"Fill background."
	UiPlatform current
		canvas: aCanvas
		fillRoundRect: (self bounds insetBy: (1@1 corner: 1@1))
		radius: 3
		fillStyle: (SolidFillStyle color: c).
