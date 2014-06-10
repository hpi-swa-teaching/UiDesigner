as yet unclassified
editorForProperty: aSymbol kind: listOrClass initialValue: aValue

	| editor |
	editor := 	self editorForProperty: aSymbol kind: listOrClass.
	self setValue: aValue inEditor: editor.
	^ editor