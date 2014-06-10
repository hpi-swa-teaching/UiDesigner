add/remove
updateIndex: newModelIndex oldIndex: formerModelIndex

	| morph |
	morph := (rows reverseDetect: [:rowInfo | rowInfo includes: formerModelIndex]) itemAt: formerModelIndex.
	morph setProperty: #modelIndex toValue: newModelIndex.