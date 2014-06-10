drawing - specific
drawProgressBarEnabledOn: aCanvas

	| upperFillStyleInnerBorder lowerFillStyleInnerBorder upperFillStyleBackground lowerFillStyleBackground colorBorder textPosition font |

	font := UiPlatform current standardButtonFont.
	self morph text ifNotNil: [:label |
		textPosition := self bounds topLeft + (((self bounds width // 2) - ((font widthOfString: label asString) // 2))
			@ ((self bounds height // 2) - (font height // 2)))].
	
	self morph fraction < 1.0 ifTrue: [
		"Draw background."
		aCanvas fillRectangle: self bounds color: self morph backgroundColor lighter.
		aCanvas fillRectangle: self innerBounds color: self morph backgroundColor darker.

		UiPlatform current
			canvas: aCanvas
			frameRoundRect: self outerBounds radius: 3 width: 1
			color: (self morph backgroundColor muchDarker alpha: 0.5).
		
		UiPlatform current
			canvas: aCanvas
			frameRoundRect: self outerBounds radius: 4 width: 1
			color: self morph backgroundColor muchDarker.

		"Draw background text."
		self morph text ifNotNil: [:label |
			aCanvas
				drawString: label asString
				at: textPosition
				font: font
				color: self morph backgroundTextColor].
	]. "morph fraction"

	"Draw bar."
	self morph fraction = 0 ifTrue: [^ self].
	
	bounds := self morph topLeft extent: (self morph extent * (self morph fraction @ 1)) rounded.
	self enableHighlight. "like a tool button"	
	upperFillStyleInnerBorder := self fillStyleUpper mixed: 0.3 with: self colorLighten.
	lowerFillStyleInnerBorder := self fillStyleLower mixed: 0.65 with: self colorLighten.
	upperFillStyleBackground := self fillStyleUpper.
	lowerFillStyleBackground := self fillStyleLower.
	colorBorder := self colorBorder.	
	
	"Bevel --- Needs to be overdrawn by background due to limitations in Balloon engine."
	aCanvas fillRectangle: self upperBounds fillStyle: upperFillStyleInnerBorder.
	aCanvas fillRectangle: self lowerBounds fillStyle: lowerFillStyleInnerBorder.

	"Background"
	aCanvas fillRectangle: self innerUpperBounds fillStyle: upperFillStyleBackground.
	aCanvas fillRectangle: self innerLowerBounds fillStyle: lowerFillStyleBackground.

	"Border"
	UiPlatform current
		canvas: aCanvas
		frameRoundRect: self outerBounds radius: 3 width: 1
		color: (colorBorder alpha: 0.5).
		
	UiPlatform current
		canvas: aCanvas
		frameRoundRect: self outerBounds radius: 4 width: 1
		color: colorBorder.
		
	"Draw bar text."
	self morph text ifNotNil: [:label |
		aCanvas clipBy: self innerBounds during: [:c | c
			drawString: label asString
			at: textPosition
			font: font
			color: self morph textColor]].