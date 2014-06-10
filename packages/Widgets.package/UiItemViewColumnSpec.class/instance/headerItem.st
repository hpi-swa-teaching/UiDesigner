building
headerItem

	| icon text balloonText item |	
	icon := self headerIcon.
	text := self headerText.
	balloonText := self headerBalloonText.
	
	(text isNil and: [icon isNil]) ifTrue: [text := ' ' asText].
	
	item := Morph new color: Color transparent.
		
	icon ifNotNil: [item addMorphBack: icon asMorph].
	text ifNotNil: [
		text isString ifTrue: [text := text asText].
		text isString | text isText ifFalse: [text := text asString asText].
		self overrideStandardListFont ifFalse: [text addAttribute: (TextFontReference toFont: UiPlatform current standardListFont)].
		item addMorphBack: text asMorph lock].
	balloonText ifNotNil: [
		item balloonText: balloonText].
	
	self doLayoutFor: item.	

	^ item