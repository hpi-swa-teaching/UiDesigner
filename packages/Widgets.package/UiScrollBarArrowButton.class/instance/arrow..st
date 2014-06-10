initialization
arrow: aSymbol
	"#up, #down, #left, #right"
	
	Arrows ifNil: [ 
		Arrows := Dictionary new.
		Arrows at: #left put: UiButtonIcons bulletArrowLeftSunkenIcon.
		Arrows at: #up put: UiButtonIcons bulletArrowUpSunkenIcon.
		Arrows at: #right put: UiButtonIcons bulletArrowRightSunkenIcon.
		Arrows at: #down put: UiButtonIcons bulletArrowDownSunkenIcon].
	
	^ Arrows at: aSymbol