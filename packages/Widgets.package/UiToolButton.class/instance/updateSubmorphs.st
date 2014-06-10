updating
updateSubmorphs

	self removeAllMorphs.
	
	self buttonStyle = #textUnderIcon
		ifTrue: [self listDirection: #topToBottom]
		ifFalse: [self listDirection: #leftToRight].
	
	self icon ifNotNil: [:i | (self buttonStyle ~= #textOnly 
		or: [self text isNil]) ifTrue: [
			self enabled
				ifTrue: [self addMorphBack: i asMorph]
				ifFalse: [self addMorphBack: i asGrayScale2 asMorph]]].
	self text ifNotNil: [:t | (self buttonStyle ~= #iconOnly
		or: [self icon isNil]) ifTrue: [
			| preparedText |
			preparedText := self enabled
				ifTrue: [t asHtmlText]
				ifFalse: [('<font color="#444444>', t asString, '</font>') asHtmlText].
			preparedText addAttribute: (TextFontReference toFont: UiPlatform current standardButtonFont).
			self addMorphBack: preparedText asMorph lock]].