selection
changeSelectionTo: aMorph
	"Talk to root container."

	(self owner isKindOf: UiContainer)
		ifTrue: [self owner changeSelectionTo: aMorph]
		ifFalse: [	self selectionChanged: aMorph].
	
	aMorph world ifNotNil: [
		aMorph addHalo].