testing
hasUnacceptedChanges

	^ self readOnly not and: [lineEdit hasUnacceptedChanges]