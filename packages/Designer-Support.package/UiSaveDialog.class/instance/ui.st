accessing
ui

	^ ui ifNil: [ui := UiSaveDialogUi new]
	