drawing - specific
drawPushButtonDisabledOn: aCanvas

	"Border outer"
	UiPlatform current
		canvas: aCanvas
		frameRoundRect: self outerBounds radius: 3 width: 1
		color: ((self colorBorder mixed: 0.8 with: self colorLighten) alpha: 0.5).
	
	UiPlatform current
		canvas: aCanvas
		frameRoundRect: self outerBounds radius: 4 width: 1
		color: (self colorBorder mixed: 0.8 with: self colorLighten).