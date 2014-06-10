edit mode - updating
updateEditButtons
	"Ensure that the edit buttons are visible if in edit mode. Hide otherwise."

	self editMode
		ifTrue: [self addMorphFront: buttonContainer].