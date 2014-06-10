keyboard - shortcuts
handleShortcut: aKeyboardEvent

	| map pattern |
	self shortcuts ifEmpty: [^ self].
	
	map := {
		aKeyboardEvent commandKeyPressed -> #cmd.
		aKeyboardEvent controlKeyPressed -> #ctrl.
		aKeyboardEvent shiftPressed -> #shift.
	}.
	pattern := OrderedCollection new.
	
	map do: [:assoc | assoc key ifTrue: [pattern add: assoc value]].
	
	pattern := pattern sorted asArray -> aKeyboardEvent keyCharacter asLowercase.
	
	(self shortcuts at: pattern ifAbsent: []) ifNotNil: [:target |
		target first first
			ifNotNil: [:receiver | receiver perform: target second]
			ifNil: [self shortcuts removeKey: pattern] "kind of garbage collection here"].