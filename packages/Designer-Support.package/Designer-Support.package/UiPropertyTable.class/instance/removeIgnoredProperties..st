updating
removeIgnoredProperties: aMorph

	| lastWasSeparator |
	self removeAllMorphsIn: (aMorph class widgetPropertiesToIgnore
		collect: [:property | self submorphs
			detect: [:row | row submorphs first text = property]
			ifNone: []]
		thenSelect: [:m | m notNil]).

	"Remove separators of empty categories."
	lastWasSeparator := false.
	self removeAllMorphsIn: ((self submorphs reverse collect: [:row | |tmp|
		tmp := (row submorphs size = 1 and: [lastWasSeparator]) "Is separator?"
			ifTrue: [row]
			ifFalse: [nil].
		lastWasSeparator := row submorphs size = 1.
		tmp]) reject: [:each | each isNil])