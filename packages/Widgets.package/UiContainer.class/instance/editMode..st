accessing
editMode: aBoolean

	editMode := aBoolean.
	
	self dropEnabled: editMode.
	self dragEnabled: editMode.
	
	self submorphs
		select: [:m | m isKindOf: UiContainer]
		thenDo: [:m | m editMode: aBoolean].