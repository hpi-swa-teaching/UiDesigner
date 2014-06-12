instance creation
generateUiClassFor: aMorph category: aString

	^ self new
		category: aString;
		generateUiClassFor: aMorph