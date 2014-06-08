updating
changeTableLayout: aMorph enable: aBoolean
	"More complex callback to change the layout of a morph."
	
	aBoolean
		ifTrue: [aMorph changeTableLayout.
			lastMorph := nil.
			self updateProperties: aMorph]
		ifFalse: [aMorph layoutPolicy: nil; layoutChanged.
			lastMorph := nil.
			self updateProperties: aMorph]