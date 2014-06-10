accessing
checkedButton

	^ self submorphs detect: [:m | m isChecked] ifNone: [nil]