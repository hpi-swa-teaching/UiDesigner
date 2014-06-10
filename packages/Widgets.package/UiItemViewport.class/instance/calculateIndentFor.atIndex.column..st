add/remove - private
calculateIndentFor: aMorph atIndex: aModelIndex column: col

	| indent itemBefore |
	aModelIndex column = 1 ifFalse: [^ 0].
	(aModelIndex parent isNil and: [self rootIsDecorated not])
		ifTrue: [^ 0].
	
	indent := 0.
	itemBefore := aMorph.

	[(itemBefore := col itemBefore: itemBefore)
		ifNil: [indent := self indent. false] "root"
		ifNotNil: [:item |
			(item hasProperty: #isGroupSeparator) "== special sibling"
			ifTrue: ["Just skip group separators." true]
			ifFalse: ["The item before is my parent. Add additional indentation."
				(item valueOfProperty: #modelIndex) = aModelIndex parent
					ifTrue: [indent := (item valueOfProperty: #indent) + self indent. false]
					ifFalse: ["The item before is my sibling. Use its indentation."
						(item valueOfProperty: #modelIndex) parent = aModelIndex parent
							ifTrue: [indent := item valueOfProperty: #indent. false]
							ifFalse: [true]]]].
	] whileTrue.
	
	^ indent