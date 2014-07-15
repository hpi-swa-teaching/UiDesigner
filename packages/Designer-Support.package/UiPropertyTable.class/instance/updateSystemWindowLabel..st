updating
updateSystemWindowLabel: aString

	self systemWindow ifNotNil: [:wnd |
		wnd setLabel: ('Morphic Designer - ''{1}''' format: {aString})].