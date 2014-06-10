event handling
keyStroke: aKeyboardEvent

	| old textEdited |
	old := self text asString.
	
	"Mouse wheel handling in view only."
	((aKeyboardEvent isKeystroke and: [aKeyboardEvent controlKeyPressed]) and: [
		aKeyboardEvent keyCharacter = Character arrowUp or: [
		aKeyboardEvent keyCharacter = Character arrowDown]])
		ifTrue: [^ self editView keyStroke: aKeyboardEvent].

	"Must be here and not in #handlesKeyboard: to catch mouse wheel input first. See above."
	self readOnly ifTrue: [
		self flag: #incomplete. "mt: Support more interactions with read-only text."
		(aKeyboardEvent commandKeyPressed and: [aKeyboardEvent keyCharacter = $c])
			ifTrue: [super keyStroke: aKeyboardEvent].
		^ self].
		
	super keyStroke: aKeyboardEvent.
	textEdited := self text ~= old.
	
	self autoConvert
		ifTrue: [self convertText].
	
	"Signal the new text (even if converted) if changed."
	textEdited ifTrue: [self textEdited: self text].
	
	self autoAccept
		ifTrue: [self editor accept].

	(self acceptOnCR and: [{Character lf. Character cr. Character enter} includes: aKeyboardEvent keyCharacter])
		ifTrue: [self editor accept. self returnPressed: self text].

	(self revertOnEscape and: [aKeyboardEvent keyCharacter == Character escape])
		ifTrue: [self revertContents. self escapePressed: self text].

	"Trigger keyboard navigation in scrollable view."
	self focusChanged: (UiPlatform current textEditorPointBlock: self editor).
	
	textEdited ifTrue: [self style].
	
	"Allow view to handle shortcuts too."
	self editView keyStroke: aKeyboardEvent.