model - actions
edit: aNode property: aProperty
	"Start the edit mode for the property in the given node."

	| rowIndex columnIndex |
	rowIndex := self rowIndexFor: aNode.
	columnIndex := self viewport columnOrder mapIndexOf: (self columnSpecs indexOf: (self columnSpecs detect: [:spec | spec includesProperty: aProperty])).

	self viewport beginEditCell: columnIndex @ rowIndex.