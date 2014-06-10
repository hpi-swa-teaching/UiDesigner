private
installEditorToReplace: priorEditor

	| newEditor |
	newEditor := super installEditorToReplace: priorEditor.
	selection ifNotNil: [newEditor selectInterval: selection].

	"Completion."
	self editView ifNotNil: [:view |
		newEditor model: view model].

	^ newEditor