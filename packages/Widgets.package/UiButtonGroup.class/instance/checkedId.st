accessing
checkedId

	self submorphs withIndexDo: [:m :i | m isChecked ifTrue: [^ i]].
	^ 0