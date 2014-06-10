ui - general
setupUi: aMorph
	"Configures this UI to be used in the given morph."
	
	self panel ifNil: [self initializePanel].
	
	aMorph extent < self panel extent
		ifTrue: [aMorph extent: self panel extent].
	
	self panel
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	
	aMorph
		changeTableLayout;
		color: self panel color;
		addMorphBack: self panel.