drawing
drawPushButton: aPushButton on: aCanvas
	"Adopted from PluggableButtonMorph>>draw:."
	
	| cc gradient borderColor |
	cc := aPushButton color.
	cc isTransparent ifTrue:[cc := Color gray: 0.9].
	aPushButton enabled ifFalse:[cc := Color lightGray].
	cc brightness > 0.9 ifTrue:[cc := cc adjustBrightness: 0.9 - cc brightness].
	aPushButton down ifTrue:[
		borderColor := cc muchDarker.
		gradient := GradientFillStyle ramp: {
			0.0 -> cc muchDarker.
			0.1-> (cc adjustBrightness: -0.2).
			0.5 -> cc.
			0.9-> (cc adjustBrightness: -0.1).
			1 -> cc muchDarker.
		}.
	] ifFalse:[
		borderColor := Color lightGray.
		gradient := GradientFillStyle ramp: {
			0.0 -> Color white.
			0.1-> (cc adjustBrightness: 0.05).
			0.6 -> (cc darker).
		}
	].
	gradient origin: aPushButton bounds topLeft.
	gradient direction: 0@self height.
	UiPlatform current
		canvas: aCanvas 
		frameAndFillRoundRect: aPushButton bounds 
		radius: 8 
		fillStyle: gradient 
		borderWidth: 1 
		borderColor: borderColor.