private
updateNameColumnWidth
	"To have equal widths."
	
	| widths max |
	widths := Array new: self submorphs size.
	self submorphs withIndexDo: [:row :i |
		row submorphs size > 1 ifTrue: [
			row submorphs first textMorph autoFit: true.
			widths at: i put: row submorphs first textMorph width.
			row submorphs first textMorph autoFit: false]
		ifFalse: [widths at: i put: 0]].

	max := widths max.
	self submorphs do: [:row |
		row submorphs first textMorph width: max.
		"Separators"
		row submorphs size = 1
			ifTrue: [row submorphs first textMorph autoFit: true]].