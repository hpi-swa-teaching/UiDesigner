layouting
updateSizesOfRowsAndColumns

	| spaceFillColumns usedSpace |
	usedSpace := 0.
	spaceFillColumns := columns select: [:column | 
		self flag: #invisbleColumns. "mt: Consider this."
		column resizeMode == #spaceFill
			ifTrue: [true]
			ifFalse: [
				column updateSize.
				usedSpace := usedSpace + column width.
				false]].
	spaceFillColumns ifNotEmpty: [:cols |
		| spacePerCol |
		spacePerCol := self width - usedSpace // cols size.
		cols do: [:column | column resize: spacePerCol; updateItemSize]].

	rows do: [:row | row updateSize].