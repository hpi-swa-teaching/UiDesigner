colors
colorHighlight
	"The highlight can be used to intensify the bevel effect."

	^ self morph
		valueOfProperty: #colorHighlight
		ifAbsentPut: [Color white]