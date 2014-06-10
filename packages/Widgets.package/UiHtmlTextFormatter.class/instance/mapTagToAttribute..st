mapping
mapTagToAttribute: aTag

	| rx strm result fontFamily fontSize |
	aTag = '<b>' ifTrue: [^ {TextEmphasis bold}].
	aTag = '<i>' ifTrue: [^ {TextEmphasis italic}].
	aTag = '<u>' ifTrue: [^ {TextEmphasis underlined}].
	aTag = '<code>' ifTrue: [^ {TextFontReference toFont: UiPlatform current standardCodeFont}].
	
	result := OrderedCollection new.
	
	"<font color=""#00FFCC"">"
	rx := 'color\s*=\s*"(#\w\w\w\w\w\w)' asRegex.
	strm := aTag readStream.
	[rx searchStream: strm]
		whileTrue: [ result add: (TextColor color: (Color fromString: (rx subexpression: 2)))].
	
	"<font family=""Bitmap SegoeUI Light"">"
	rx := 'family\s*=\s*"([^"]+)"' asRegex.
	strm := aTag readStream.
	[rx searchStream: strm]
		whileTrue: [fontFamily := rx subexpression: 2].

	"<font size=""7"">"
	rx := 'size\s*=\s*"(\d+)' asRegex.
	strm := aTag readStream.
	[rx searchStream: strm]
		whileTrue: [fontSize := rx subexpression: 2].

	fontSize ifNil: [fontSize := UiPlatform current standardDefaultTextFont pointSize].
	result add: (TextFontReference toFont: (fontFamily
		ifNil: [TextStyle default fontOfPointSize: fontSize]
		ifNotNil: [:ff | StrikeFont familyName: ff pointSize: fontSize])).

	^ result