updating
changeProportionalLayout: aMorph enable: aBoolean
	
	aBoolean
		ifTrue: [aMorph changeProportionalLayout.
			lastMorph := nil.
			self updateProperties: aMorph]
		ifFalse: [aMorph layoutPolicy: nil; layoutChanged.
			lastMorph := nil.
			self updateProperties: aMorph]