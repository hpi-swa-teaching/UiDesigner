accessing
overrideStandardListFont
	"Check whether Preferences>>#standardListFont should NOT be used for all items, but custom text fonts are supported."
	
	^ overrideStandardListFont ifNil: [false]