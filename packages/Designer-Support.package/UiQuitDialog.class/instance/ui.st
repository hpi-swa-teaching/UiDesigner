accessing
ui

	^ ui ifNil: [ui := UiQuitDialogUi new]