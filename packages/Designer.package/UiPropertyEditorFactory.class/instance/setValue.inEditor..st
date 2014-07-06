as yet unclassified
setValue: aValue inEditor: aMorph

	| editorClass |
	editorClass := aMorph class.
	editorClass == UiLineEdit ifTrue: [^ aMorph theText: aValue].
	editorClass == UiCheckBox ifTrue: [^ aMorph checked: aValue].
	editorClass == UiComboBox ifTrue: [^ aMorph currentItem: (aMorph list detect: [:item | item text =  aValue])].
	editorClass == UiPushButton ifTrue: [^ aMorph icon: aValue].