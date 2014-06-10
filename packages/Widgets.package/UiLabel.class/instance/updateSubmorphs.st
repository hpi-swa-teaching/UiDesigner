updating
updateSubmorphs

	self flag: #smell. "mt: Why not just integrate into accessors?"
	((self submorphs notEmpty and: [self form isNil]) and: [self submorphs first == text])
		ifTrue: [^ self].

	self removeAllMorphs.
	
	self form
		ifNil: [self addMorphBack: text]
		ifNotNil: [self addMorphBack: form asMorph].