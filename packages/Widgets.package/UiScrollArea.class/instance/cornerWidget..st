accessing
cornerWidget: anObject

	anObject ifNil: [^ self cornerWidget: (Morph new color: Color transparent)].

	cornerWidget := anObject.

	self updateLayout.