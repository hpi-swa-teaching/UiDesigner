submorphs-accessing
firstSubmorph
	
	^ self submorphs
		ifEmpty: []
		ifNotEmpty: [self submorphs first]