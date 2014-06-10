accessing
orientation: aSymbol
	"#horizontal, #vertical"

	aSymbol = self orientation ifTrue: [^ self].

	orientation := aSymbol.
	
	self sliderChange: #orientationChange.