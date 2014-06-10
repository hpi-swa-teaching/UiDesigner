accessing
widget
	"The morph that is scrolled."
	
	^ self transformMorph submorphs
		ifEmpty: [nil]
		ifNotEmpty: [self transformMorph submorphs first]