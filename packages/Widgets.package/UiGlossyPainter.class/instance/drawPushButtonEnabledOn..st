drawing - specific
drawPushButtonEnabledOn: aCanvas

	| upperFillStyleInnerBorder lowerFillStyleInnerBorder upperFillStyleBackground lowerFillStyleBackground colorBorder |
	orientation := self morph orientation.
	
	upperFillStyleInnerBorder :=
		self morph down ifTrue: [
			self fillStyleUpper mixed: 0.8 with: self colorDarken] ifFalse: [
		self morph checked ifTrue: [
			self fillStyleUpper mixed: 0.85 with: self colorDarken] ifFalse: [
		"normal"
			self fillStyleUpper mixed: 0.3 with: self colorLighten]].
	lowerFillStyleInnerBorder :=
		self morph down ifTrue: [
			self fillStyleLower mixed: 0.85 with: self colorDarken] ifFalse: [
		self morph checked ifTrue: [
			self fillStyleLower mixed: 0.9 with: self colorDarken] ifFalse: [
		"normal"
			self fillStyleLower mixed: 0.65 with: self colorLighten]].
	upperFillStyleBackground :=
		self morph down ifTrue: [
			self fillStyleUpper mixed: 0.9 with: self colorDarken] ifFalse: [
		self morph checked ifTrue: [
			self fillStyleUpper mixed: 0.95 with: self colorDarken] ifFalse: [
		"normal"
			self fillStyleUpper]].
	lowerFillStyleBackground :=
		self morph down ifTrue: [
			self fillStyleLower mixed: 0.9 with: self colorDarken] ifFalse: [
		self morph checked ifTrue: [
			self fillStyleLower mixed: 0.95 with: self colorDarken] ifFalse: [
		"normal"
			self fillStyleLower]].
	colorBorder :=
		self morph down ifTrue: [
			self colorBorder mixed: 0.9 with: self colorDarken] ifFalse: [
		self morph checked ifTrue: [
			self colorBorder mixed: 0.95 with: self colorDarken] ifFalse: [
		"normal"
			self colorBorder]].	
	
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
