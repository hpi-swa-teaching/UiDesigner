accessing
orientation: aSymbol
	"See UiListView>>#listOrientation:."

	aSymbol = orientation ifTrue: [^ self].
	orientation := aSymbol.
	
	orientation = #default
		ifTrue: [self selectionBehavior: #selectRows]
		ifFalse: [self selectionBehavior: #selectCells].