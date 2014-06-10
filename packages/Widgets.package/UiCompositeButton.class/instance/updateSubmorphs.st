updating
updateSubmorphs

	self removeAllMorphs.
	
	box ifNil: [box := self boxClass new].
	
	self addMorphBack: box.
	self icon ifNotNil: [:i |
		self enabled
				ifTrue: [self addMorphBack: i asMorph]
				ifFalse: [self addMorphBack: i asGrayScale2 asMorph]].
	self text ifNotNil: [:t | 
		self enabled
				ifTrue: [self addMorphBack: t asHtmlText asMorph lock]
				ifFalse: [self addMorphBack: ('<font color="#444444>', t asString, '</font>') asHtmlText asMorph lock]].