initialization
ensureColumnCount: numberOfColumns
	"Create columns on-the-fly."
	
	numberOfColumns > columns size
		ifTrue: [numberOfColumns - columns size timesRepeat: [columns add: UiViewColumnInfo new]].