drawing
drawOn: aCanvas

	self color ifNotNil: [:c |
		UiPlatform current
			canvas: aCanvas
			fillRoundRect: (self bounds insetBy: 1)
			radius: 3
			fillStyle: (SolidFillStyle color: c)].

	self form value ifNotNil: [:f |
		aCanvas
			translucentImage: f
			at: self formPosition + self topLeft].
	
	self label ifNotNil: [:l |
		aCanvas
			drawString: l
			at: self labelPosition + self topLeft
			font: self font
			color: self labelColor].